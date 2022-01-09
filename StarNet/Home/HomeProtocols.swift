//
//  HomeProtocols.swift
//  StarNet
//
//  Created by Miyo on 08/01/22.
//  
//

import Foundation
import UIKit

protocol HomeViewProtocol: AnyObject {
    // PRESENTER -> VIEW
    var presenter: HomePresenterProtocol? { get set }
}

protocol HomeWireFrameProtocol: AnyObject {
    // PRESENTER -> WIREFRAME
    static func createHomeModule() -> UIViewController
}

protocol HomePresenterProtocol: AnyObject {
    // VIEW -> PRESENTER
    var view: HomeViewProtocol? { get set }
    var interactor: HomeInteractorInputProtocol? { get set }
    var wireFrame: HomeWireFrameProtocol? { get set }
    
    func viewDidLoad()
}

protocol HomeInteractorOutputProtocol: AnyObject {
// INTERACTOR -> PRESENTER
}

protocol HomeInteractorInputProtocol: AnyObject {
    // PRESENTER -> INTERACTOR
    var presenter: HomeInteractorOutputProtocol? { get set }
    var localDatamanager: HomeLocalDataManagerInputProtocol? { get set }
    var remoteDatamanager: HomeRemoteDataManagerInputProtocol? { get set }
}

protocol HomeDataManagerInputProtocol: AnyObject {
    // INTERACTOR -> DATAMANAGER
}

protocol HomeRemoteDataManagerInputProtocol: AnyObject {
    // INTERACTOR -> REMOTEDATAMANAGER
    var remoteRequestHandler: HomeRemoteDataManagerOutputProtocol? { get set }
}

protocol HomeRemoteDataManagerOutputProtocol: AnyObject {
    // REMOTEDATAMANAGER -> INTERACTOR
}

protocol HomeLocalDataManagerOutputProtocol: AnyObject {
    // LOCALDATAMANAGER -> INTERACTOR
}

protocol HomeLocalDataManagerInputProtocol: AnyObject {
    // INTERACTOR -> LOCALDATAMANAGER
    var localRequestHandler: HomeLocalDataManagerOutputProtocol? { get set }
}
