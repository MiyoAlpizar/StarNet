//
//  NotificationCellView.swift
//  iSocialNet
//
//  Created by Miyo on 26/12/21.
//

import UIKit

class NotificationCellView: UITableViewCell {

    static let NAME = "NotificationCellView"
    
    @IBOutlet weak var imgIcon: UIImageView!
    
    @IBOutlet weak var lblMessage: UILabel!
    
    @IBOutlet weak var lblTime: UILabel!
    
    var data: NotificationForCell? {
        didSet {
            guard let data = data else {
                return
            }
            setData(data: data)
        }
    }
    
    private func setData(data: NotificationForCell) {
        imgIcon.image = UIImage(systemName: data.icon)
        lblMessage.text = data.message
        lblTime.text = data.time
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
