//
//  BannerViewController.swift
//  PGBanner-Swift
//
//  Created by piggybear on 2017/7/7.
//  Copyright © 2017年 piggybear. All rights reserved.
//

import UIKit
import PGBannerSwift

class BannerViewController: UIViewController {
    @IBOutlet weak var customView: UIView!
    open var isImage: NSInteger = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if self.isImage == 1 {
            self.setupImageView()
        }else if self.isImage == 2 {
            self.setupwebImageView()
        }
        else {
            self.setupCustomView()
        }
    }
    
    func setupCustomView() {
        let view1: CustomView = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?.first as! CustomView
        view1.index = 0
        
        let view2: CustomView = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?.first as! CustomView
        view2.index = 1
        
        let view3: CustomView = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?.first as! CustomView
        view3.index = 2
        
        //将最后一个view放到数组的第一个位置
        let view0: CustomView = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?.first as! CustomView
        view0.index = 2
        
        //将第一个view放到数组的第最后位置
        let view4: CustomView = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?.first as! CustomView
        view4.index = 0
        
        let banner = PGBanner(frame: self.customView.bounds, viewList: [view0, view1, view2, view3, view4], timeInterval: 3.0)
        banner.delegate = self
        self.customView.addSubview(banner)
    }
    
    func setupImageView() {
        
        let banner = PGBanner(frame: self.customView.bounds, imageNameList: ["photo1", "photo2", "photo3"], timeInterval: 3.0)
        banner.delegate = self
        self.customView.addSubview(banner)
    }
    
    func setupwebImageView() {
        
        let banner = PGBanner(frame: self.customView.bounds, imageNameList: ["http://img.zcool.cn/community/05e5e1554af04100000115a8236351.jpg", "http://imgsrc.baidu.com/image/c0%3Dshijue%2C0%2C0%2C245%2C40/sign=b61c57bf06f431ada8df4b7a235fc6da/b58f8c5494eef01f3e82aae8eafe9925bc317d0c.jpg", "http://www.ccarting.com/img/opus/photograph/h000/h41/img201008181910520.jpg"], placeholderImage: UIImage(named: "photo1"), timeInterval: 3.0)
        banner.delegate = self
        self.customView.addSubview(banner)
    }
}

extension BannerViewController: PGBannerDelegate {
    func selectAction(didselectAtIndex index: NSInteger, didSelectView view: Any) {
        print("index = ", index, "view = ", view)
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "tapAction")
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
