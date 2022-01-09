//
//  ReachabilityHelper.swift
//  iSocialNet
//
//  Created by Miyo on 25/12/21.
//

import Foundation

protocol ReachabilyDelegate: AnyObject {
    func reachabilityChanged(_ isReachable: Bool)
}

///Class to delegate any listener any internet connections changes
class ReachabilityHelper : ReachabilityObserverDelegate {
    static let shared = ReachabilityHelper()
    private(set) var isReachable = true
    
    var listeners = [ReachabilyDelegate]()
    
    private init () { }
    
    func startListening() {
        ///Observes for any internet connecion status changes
        try? addReachabilityObserver()
    }
    
    func addListener(listener: ReachabilyDelegate) {
        removeListener(listener: listener)
        listeners.append(listener)
    }
    
    func removeListener(listener: ReachabilyDelegate) {
        listeners = listeners.filter{ $0 !== listener }
    }
    
    private func delegateAll() {
        for listener in listeners {
            listener.reachabilityChanged(isReachable)
        }
    }
    func reachabilityChanged(_ isReachable: Bool) {
        print("Internet connection changed to \(isReachable ? "online" : "offline") ")
        self.isReachable = isReachable
        delegateAll()
    }
}
