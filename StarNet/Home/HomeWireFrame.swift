//
//  HomeWireFrame.swift
//  StarNet
//
//  Created by Miyo on 08/01/22.
//  
//

import Foundation
import UIKit

class HomeWireFrame: HomeWireFrameProtocol {

    class func createHomeModule() -> UIViewController {
        
        let view = HomeView.instance()
        
        let presenter: HomePresenterProtocol & HomeInteractorOutputProtocol = HomePresenter()
        let interactor: HomeInteractorInputProtocol & HomeLocalDataManagerOutputProtocol & HomeRemoteDataManagerOutputProtocol = HomeInteractor()
        let localDataManager: HomeLocalDataManagerInputProtocol = HomeLocalDataManager()
        let remoteDataManager: HomeRemoteDataManagerInputProtocol = HomeRemoteDataManager()
        let wireFrame: HomeWireFrameProtocol = HomeWireFrame()
        
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.localDatamanager = localDataManager
        interactor.remoteDatamanager = remoteDataManager
        remoteDataManager.remoteRequestHandler = interactor
        localDataManager.localRequestHandler = interactor
        
        return view
        
    }
    
}
