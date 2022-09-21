//
//  ViewController.swift
//  NetworkingAssignment
//
//  Created by EKbana on 20/09/2022.
//

import UIKit

class ViewController: UIViewController {
    let  myapi = Networking()
    var newsArticles: [Article]?
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        fetchNews()
    }
   

}

//MARK: - methods
extension ViewController {
    
    private func fetchNews() {
        myapi.apiCall(url: "") { [weak self] data, error in
            DispatchQueue.main.async {
                self?.newsArticles = data
                self?.tableView.reloadData()
                print(data)
                print(error)
            }
        
    }
}

}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsArticles?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath) as! NewsTableViewCell
        cell.titleLabel.text = newsArticles?[indexPath.row].title
        cell.authorLabel.text = newsArticles?[indexPath.row].author
        cell.sourceLabel.text = newsArticles?[indexPath.row].source?.name
        cell.dateLabel.text = newsArticles?[indexPath.row].publishedAt      
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let stordboard = UIStoryboard(name: "Main", bundle: nil)
                let controller = stordboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        controller.titles = (newsArticles?[indexPath.row].title)!
        controller.authors = (newsArticles?[indexPath.row].author)!
        controller.descriptions = (newsArticles?[indexPath.row].description)!
        controller.contents = (newsArticles?[indexPath.row].content)!
        navigationController?.pushViewController(controller, animated: true)
    }
}
