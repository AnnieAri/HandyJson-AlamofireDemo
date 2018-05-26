//	
//  ░░░░░░░░░░░░░░░░░░░░░░░░▄░░
//  ░░░░░░░░░▐█░░░░░░░░░░░▄▀▒▌░
//  ░░░░░░░░▐▀▒█░░░░░░░░▄▀▒▒▒▐
//  ░░░░░░░▐▄▀▒▒▀▀▀▀▄▄▄▀▒▒▒▒▒▐
//  ░░░░░▄▄▀▒░▒▒▒▒▒▒▒▒▒█▒▒▄█▒▐
//  ░░░▄▀▒▒▒░░░▒▒▒░░░▒▒▒▀██▀▒▌
//  ░░▐▒▒▒▄▄▒▒▒▒░░░▒▒▒▒▒▒▒▀▄▒▒
//  ░░▌░░▌█▀▒▒▒▒▒▄▀█▄▒▒▒▒▒▒▒█▒▐
//  ░▐░░░▒▒▒▒▒▒▒▒▌██▀▒▒░░░▒▒▒▀▄
//  ░▌░▒▄██▄▒▒▒▒▒▒▒▒▒░░░░░░▒▒▒▒
//  ▀▒▀▐▄█▄█▌▄░▀▒▒░░░░░░░░░░▒▒▒
//  EKBaseResponse.swift 
//  EKInfomation 
// 
//  Created by Ari on 2018/4/28. 
//  Copyright © 2018年 erkang. All rights reserved. 
//  github:https://github.com/AnnieAri
//  blog:https://www.jianshu.com/u/e80cddc74b7d
//  qq:6937523
//  学习这件事， 不在乎有没有人教你，最重要的是在于你自己有没有觉悟和恒心。
//  可能一个人说你不服气，两个人说你不服气，很多人在说的时候，你要反省，一定是自己出了一些问题。	
// 

import Foundation
import HandyJSON

/// 元组: .0是否成功.1状态说明
typealias EKCallBackTuple = (isSuccess: Bool,message: String)
/// 成功返回码
let EKSuccessCode = 10200

protocol EKResponseProtocol {
   
}
extension EKResponseProtocol where Self : HandyJSON {
    static func request(with url: String,params: [String:Any]?,success:((EKDataResponse<Self>)->())?,failure:((String)->())?) {
        ARNetworkTool.post(url: url, params: params, success: { (data) in
            guard let dict = data as? [String : Any] else {
                failure?("模型解析失败")
                return
            }
            guard let dataRp = EKDataResponse<Self>.deserialize(from: dict) else {
                failure?("模型解析失败")
                return
            }
            success?(dataRp)
        }) { (error) in
            failure?("失败原因")
        }
    }
}


func EKCBTCreat(_ isSuccess: Bool, _ message: String)->EKCallBackTuple{
    return (isSuccess,message)
}

class EKBaseResponse: HandyJSON {
    var code: Int = 0 // 服务端返回码
   
    var message: String = ""
    public required init() {
        
    }
}

class EKDataResponse<T: HandyJSON>: EKBaseResponse {
    var data: [T] = [T]()
}

class EKKVDataRespone<T: HandyJSON>: EKBaseResponse {
    var data: T?
    
}
/// 模型基类  创建模型的时候继承   可以不用import HandyJSON 
class EKBaseModel: HandyJSON ,EKResponseProtocol{
    required init () {}
}



