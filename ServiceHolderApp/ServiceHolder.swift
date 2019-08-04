//
//  ServiceHolder.swift
//  ServiceHolderApp
//
//  Created by Pavel Ivanov on 3/21/19.
//  Copyright © 2019 Pavel Ivanov. All rights reserved.
//

import Foundation

class ServiceHolder {
    
    func initServices(object: AnyObject) {
        
        if var userServiceObj = object as? UserServiceProtocol {
            userServiceObj.userService = UserService()
        }
        
        if var networkServiceObj = object as? NetworkServiceProtocol {
            networkServiceObj.network = NetworkService()
        }
    
    }
}

protocol UserServiceProtocol {
    
    var userService: UserService? { get set}
}

class UserService {
    init() {
        print("UserService")
    }
    
    func user() {
        print("UserService user")
    }
}

protocol NetworkServiceProtocol {
    var network: NetworkService? {get set}
}

class NetworkService {
    
    init() {
      print("NetworkService ")
    }
    
    func net() {
        print("NetworkService net")
    }
}
