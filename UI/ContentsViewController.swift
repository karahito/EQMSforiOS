//
//  ContentsViewController.swift
//  EQMSforiOS
//
//  Created by BusinessSoftMac on 2018/06/11.
//  Copyright © 2018年 JapanMicroSystem. All rights reserved.
//

import UIKit
import SVGKit
import MaterialComponents
class ContentsViewController: UIViewController {

    private let NAVIGATION_BARTINT = UIColor(red: 63/255, green: 81/255, blue: 181/255, alpha: 1)
    private let NAVIGATION_TINT = UIColor.white
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setNavigationBarProperty()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        openLeft()
    }
    private func setNavigationBarProperty(){
        // NavigationBarの透過設定
        navigationController?.navigationBar.isTranslucent = false
        
        // NavigationBarの背景色
        navigationController?.navigationBar.barTintColor = NAVIGATION_BARTINT
        navigationController?.navigationBar.tintColor = NAVIGATION_TINT
        
        let menuImage = SVGKImage(named: "bars")!
        menuImage.size = CGSize(width: 24, height: 24)
        // NavigationBarの左にボタンを配置 SlideMenuControllerSwift特有プロパティ
        addLeftBarButtonWithImage(menuImage.uiImage)
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
