//
//  ViewController.swift
//  MoyaResultValidate
//
//  Created by insect on 12/09/2021.
//  Copyright (c) 2021 insect. All rights reserved.
//

import UIKit
import Moya
import MoyaResultValidate

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let provider = MoyaProvider<RequestApi>(plugins: [MoyaResultValidatePlugin()])
        provider.request(.baidu) { result in
            switch result {
            case let .success(response):
                break
            case let .failure(error):
                error.asValidateError
            }
        }
    }
}

