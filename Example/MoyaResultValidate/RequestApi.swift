//
//  RequestApi.swift
//  MoyaResultValidate_Example
//
//  Created by insect on 2021/12/9.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Moya
import MoyaResultValidate

enum RequestApi {
    
    case baidu
}

extension RequestApi: TargetType {
    
    var baseURL: URL {
        return URL(string: "https://baidu.com")!
    }
    
    var path: String {
        return ""
    }
    
    var method: Moya.Method {
        return .get
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        return .requestPlain
    }
    
    var headers: [String : String]? {
        return nil
    }
}

extension RequestApi: MoyaResultValidateable {
    
    func isResultSuccess(response: Response) -> Bool {
        return true
    }
}
