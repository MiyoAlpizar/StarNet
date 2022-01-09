//
//  NotificationsPresenter.swift
//  StarNet
//
//  Created by Miyo on 08/01/22.
//  
//

import Foundation

class NotificationsPresenter  {
    
    // MARK: Properties
    weak var view: NotificationsViewProtocol?
    var interactor: NotificationsInteractorInputProtocol?
    var wireFrame: NotificationsWireFrameProtocol?
    
}

extension NotificationsPresenter: NotificationsPresenterProtocol {
    // TODO: implement presenter methods
    func viewDidLoad() {
    }
}

extension NotificationsPresenter: NotificationsInteractorOutputProtocol {
    // TODO: implement interactor output methods
}
