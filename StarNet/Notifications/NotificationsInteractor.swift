//
//  NotificationsInteractor.swift
//  StarNet
//
//  Created by Miyo on 08/01/22.
//  
//

import Foundation

class NotificationsInteractor: NotificationsInteractorInputProtocol {

    // MARK: Properties
    weak var presenter: NotificationsInteractorOutputProtocol?
    var localDatamanager: NotificationsLocalDataManagerInputProtocol?
    var remoteDatamanager: NotificationsRemoteDataManagerInputProtocol?

}
extension NotificationsInteractor: NotificationsRemoteDataManagerOutputProtocol {
    // TODO: Implement use case methods
}

extension NotificationsInteractor: NotificationsLocalDataManagerOutputProtocol {
    // TODO: Implement use case methods
}
