//
//  NetworkHelper.swift
//  MVVM
//
//  Created by Chayon Ahmed on 2/28/17.
//  Copyright © 2017 Herock Hasan. All rights reserved.
//

import Foundation
import Alamofire

public class NetworkHelper {
    
    typealias apiSuccess = (_ result: NSDictionary?) -> Void
    typealias apiProgress = (_ result: NSDictionary?) -> Void // when you want to download or upload using Alamofire..
    typealias apiFailure = (_ error: NSDictionary?) -> Void
    
    
//    func startNetworkReachabilityObserver() {
//        let reachabilityManager = Alamofire.NetworkReachabilityManager(host: "www.google.com")
//        reachabilityManager?.listener = { status in
//            
//            switch status {
//                
//            case .NotReachable:
//                print("The network is not reachable")
//                
//            case .Unknown :
//                print("It is unknown whether the network is reachable")
//                
//            case .Reachable(.EthernetOrWiFi):
//                print("The network is reachable over the WiFi connection")
//                
//            case .Reachable(.WWAN):
//                print("The network is reachable over the WWAN connection")
//                
//            }
//        }
//        
//        // start listening
//        reachabilityManager?.startListening()
//    }
    
    
}





