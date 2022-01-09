//
//  HomeInteractor.swift
//  StarNet
//
//  Created by Miyo on 08/01/22.
//  
//

import Foundation

class HomeInteractor: HomeInteractorInputProtocol {

    // MARK: Properties
    weak var presenter: HomeInteractorOutputProtocol?
    var localDatamanager: HomeLocalDataManagerInputProtocol?
    var remoteDatamanager: HomeRemoteDataManagerInputProtocol?

}
extension HomeInteractor: HomeRemoteDataManagerOutputProtocol {
    // TODO: Implement use case methods
}

extension HomeInteractor: HomeLocalDataManagerOutputProtocol {
    // TODO: Implement use case methods
}
