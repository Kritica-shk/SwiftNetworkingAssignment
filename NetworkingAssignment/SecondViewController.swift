//
//  SecondViewController.swift
//  NetworkingAssignment
//
//  Created by EKbana on 20/09/2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var sContentLabel: UILabel!
    @IBOutlet weak var sDescriptionLabel: UILabel!
    @IBOutlet weak var sAuthorLabel: UILabel!
    @IBOutlet weak var sTitleLabel: UILabel!
    
    var titles: String = ""
    var descriptions: String = ""
    var authors: String = ""
    var contents: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        sContentLabel.text = contents
        sDescriptionLabel.text = descriptions
        sAuthorLabel.text = authors
        sTitleLabel.text = titles
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
