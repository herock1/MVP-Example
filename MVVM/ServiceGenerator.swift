//
//  ServiceGenerator.swift
//  MVVM
//
//  Created by Chayon Ahmed on 2/26/17.
//  Copyright © 2017 Herock Hasan. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

public class ServiceGenerator {
    
    typealias apiSuccess = (_ result: NSDictionary?) -> Void
    typealias apiProgress = (_ result: NSDictionary?) -> Void
    typealias apiFailure = (_ error: NSDictionary?) -> Void
    
    
    
    func getdata()   {
        
        Alamofire.request("https://httpbin.org/get").responseJSON {
            response in
            // result of response serialization
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
                let user = Response(dictionary: JSON as! NSDictionary)
                
                print("JSON: \(user?.origin)")
                print((user?.origin)!)
                print((user?.headers?.accept_Language)!)
            }
        }
    }
    
    
    func callJSONrequest(url:String, params:[String: AnyObject]?, success successBlock :@escaping apiSuccess,
                         failure failureBlock :@escaping apiFailure) {
        
        Alamofire.request(url).responseJSON {
            response in
    
            if response.result.isSuccess {
                let jsonDic = response.result.value as! NSDictionary
                successBlock(jsonDic)
                
            } else {
                let httpError: NSError = response.result.error! as NSError
                let statusCode = httpError.code
                let error:NSDictionary = ["error" : httpError,"statusCode" : statusCode]
                failureBlock(error)
            }
            
        }
        
        
    }
    
}
