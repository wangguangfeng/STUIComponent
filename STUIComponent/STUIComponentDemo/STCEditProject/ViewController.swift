//
//  ViewController.swift
//  STCEditProject
//
//  Created by XuAzen on 16/2/24.
//  Copyright © 2016年 XuAzen. All rights reserved.
//

import UIKit
import STUIComponent

class ViewController: UIViewController {

    @IBOutlet weak var headerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
//        setupBasic()
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        setupBasic()
    }
    // MARK: - 初始化
    func setupBasic() {
        loopPage.frame = headerView.bounds
        headerView.addSubview(loopPage)
    }
    
    // MARK: - Lazy
    lazy var loopPage : LoopPage = {
        
        let page = LoopPage(frame: CGRect(x: 0,y: 0,width: 375,height: 100), timeInter: 1, countClosur: { () -> Int in
            return 5
            }, pageClosure: { (pageIndex) -> UIView in
                let label = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
                label.text = "pageIndex：\(pageIndex)"
                label.textAlignment = NSTextAlignment.Center
                
                return label
            }, actionClosure: { (pageIndex) -> Void in
                print("\(pageIndex)")
        })
        return page
    }()
}
