//
//  ProfilePresenter.swift
//  MVVM
//
//  Created by Chayon Ahmed on 2/27/17.
//  Copyright © 2017 Herock Hasan. All rights reserved.
//

import Foundation


public class ProfilePresenter {
    
    typealias apiSuccess = (_ result: NSDictionary?) -> Void
    typealias apiProgress = (_ result: NSDictionary?) -> Void
    typealias apiFailure = (_ error: NSDictionary?) -> Void
    
    
    
    
    func getProfile(param:String) -> Void {
        
        
        let service = ServiceGenerator()
        let url : String! = "https://httpbin.org/get"
        print("api url ",url)
        
        let myApiSuccess: apiSuccess = {(result: NSDictionary?) -> Void in
            print ("Api Success : result is:\n \(result)")
            
            
            let user = Response(dictionary: result!)
            
            print("JSON: \(user?.origin)")
            print((user?.origin)!)
            print((user?.headers?.accept_Language)!)
            
        }
        let myApiFailure: apiFailure = {(error: NSDictionary?) -> Void in
            print ("Api Failure : error is:\n \(error)")
            
        }
        
        
        service.callJSONrequest(url: url, params:nil, success: myApiSuccess, failure:myApiFailure)
        
    }
    
    
    func getUserProfile(param:String ,
                        successResponse:@escaping (_ response:Response) -> Void ,
                        failResponse:  @escaping (_ error:String) -> Void)
    {
        
        
        let service = ServiceGenerator()
        let url : String! = "https://httpbin.org/get"
        print("api url ",url)
        
        
        let myApiSuccess: apiSuccess = {(result: NSDictionary?) -> Void in
            print ("Api Success : result is:\n \(result)")
            let user = Response(dictionary: result!)!
            
            print("JSON: \(user.origin)")
            print((user.origin)!)
            print((user.headers?.accept_Language)!)
            successResponse(user)
            
            
        }
        let myApiFailure: apiFailure = {(error: NSDictionary?) -> Void in
            print ("Api Failure : \(error)")
            
            failResponse("error");
            
        }
        
        service.callJSONrequest(url: url, params:nil, success: myApiSuccess, failure:myApiFailure)
        
    }
}

