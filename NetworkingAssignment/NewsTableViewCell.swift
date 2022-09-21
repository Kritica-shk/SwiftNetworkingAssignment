//
//  NewsTableViewCell.swift
//  NetworkingAssignment
//
//  Created by EKbana on 20/09/2022.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization c
        print(sourceLabel.text)
    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var sourceLabel: UILabel!
    
    // date converter
//    func convertDateFormat(_ date: String?) -> String {
//        var fixDate = ""
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "yyyy-mm-dd"
//        if let originDate = date {
//            if let newDate = dateFormatter.date(from: originDate) {
//                dateFormatter.dateFormat = "dd-mm-yyyy"
//                fixDate = dateFormatter.string(from: newDate)
//            }
//        }
//        return fixDate
//    }
}
