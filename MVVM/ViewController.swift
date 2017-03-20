//
//  ViewController.swift
//  MVVM
//
//  Created by Herock Hasan on 2/26/17.
//  Copyright © 2017 Herock Hasan. All rights reserved.
//
import Alamofire
import UIKit
import SwiftyJSON

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getProfile()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func testapi() -> Void {
        let service = ProfilePresenter();
        service.getProfile(param: "")
    }
    
    
    func getProfile() -> Void {
        let presenter = ProfilePresenter();
        
        presenter.getUserProfile(param: "",
            successResponse:
            {
            
            ( resounse ) -> Void in
            
            print((resounse.origin)!)
            print((resounse.headers?.accept_Language)!)
            
            }
            
            ,failResponse:
            
            {
            ( error ) -> Void in
            
            
            }
        )
        
    }
    
}

