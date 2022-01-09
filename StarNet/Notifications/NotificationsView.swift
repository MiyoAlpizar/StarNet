//
//  NotificationsView.swift
//  StarNet
//
//  Created by Miyo on 08/01/22.
//  
//

import Foundation
import UIKit

class NotificationsView: UIViewController {

    // MARK: Properties
    var presenter: NotificationsPresenterProtocol?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension NotificationsView: NotificationsViewProtocol {
    // TODO: implement view output methods
}
