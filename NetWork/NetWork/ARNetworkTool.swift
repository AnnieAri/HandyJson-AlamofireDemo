//
//  ARNetworkTool.swift
//  Health
//
//  Created by 吴文建 on 2017/10/15.
//  Copyright © 2017年 Ari. All rights reserved.
//

import UIKit
import Alamofire

let api_baseUrl = ""

let json = """
{
"code": "10200",
"message": "成功",
"data": [
{
"user_id": 81,
"sex": 0,
"age": 15,
"number": "xx123456",
"identification": "123456789123456",
"job": "php开发",
"real_name": "文文"
}
]
}
"""

class ARNetworkTool {
    @discardableResult class func post(url: String,baseUrl: String = api_baseUrl,params: [String: Any]?,success: ((Any)->())?,failure: ((Error)->())?) -> DataRequest?{
        let jsonData = json.data(using: .utf8)!
        success?(try! JSONSerialization.jsonObject(with: jsonData, options: []))
        
        return nil
        guard let ar_url = URL(string: baseUrl+url) else {
            return nil
        }
        return Alamofire.request(ar_url, method: .post, parameters: params, encoding: URLEncoding(), headers: nil).responseJSON { (data) in
           
            if data.result.isSuccess {
                if let _data = data.value {
                    success?(_data)
                }else{
                    success?([:])
                }
            }else{
                failure?(data.error!)
            }
        }
    }
}


