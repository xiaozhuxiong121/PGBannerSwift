//
//  ViewController.swift
//  PGBanner-Swift
//
//  Created by piggybear on 2017/7/6.
//  Copyright © 2017年 piggybear. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc: BannerViewController = segue.destination as! BannerViewController
        if Int(segue.identifier!)! == 1 {
          vc.isImage = true
        }
    }
   
}
