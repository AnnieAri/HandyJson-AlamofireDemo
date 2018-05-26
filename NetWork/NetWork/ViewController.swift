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
//  ViewController.swift 
//  NetWork 
// 
//  Created by Ari on 2018/5/26. 
//  Copyright © 2018年 阿狸. All rights reserved. 
//  github:https://github.com/AnnieAri
//  blog:https://www.jianshu.com/u/e80cddc74b7d
//  qq:6937523
//  学习这件事， 不在乎有没有人教你，最重要的是在于你自己有没有觉悟和恒心。
//  可能一个人说你不服气，两个人说你不服气，很多人在说的时候，你要反省，一定是自己出了一些问题。	
// 

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UserModel.request(with: "", params: nil, success: { (rp) in
            print(rp.code)
            print(rp.message)
            print(rp.data.toJSONString())
        }, failure: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    10200
//    成功
//    Optional("[{\"real_name\":\"文文\",\"job\":\"php开发\",\"age\":15,\"number\":\"xx123456\",\"user_id\":81,\"identification\":\"123456789123456\",\"sex\":0}]")


}

