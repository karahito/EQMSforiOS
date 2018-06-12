//
//  MenuController.swift
//  SlideMenu
//
//  Created by BusinessSoftMac on 2018/06/08.
//  Copyright © 2018年 example. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

/**
 *  MenuController
 *  SlideMenu全体を管理するVC(ViewController)
 */
class MenuController: SlideMenuController {

    
    override func awakeFromNib() {
        /* 各画面のVCを生成 */
        // MainViewのVC
        let mainVC = storyboard?.instantiateViewController(withIdentifier: "MainTest")
        // MainViewのNavigationBarを生成
        let navigationController = UINavigationController(rootViewController: mainVC!)
        // SlideMenuのV
        let leftVC = storyboard?.instantiateViewController(withIdentifier: "Left")
    
        /* SlideMenuControllerのプロパティをセット */
        // MainのVCをセット
        mainViewController = navigationController
        // LeftMenuのVCをセット
        leftViewController = leftVC
        // RightMenuのVCをセット
        // rightViewController = leftVC
        
        SlideMenuOptions.hideStatusBar = false
        SlideMenuOptions.contentViewScale = 1.0
        super.awakeFromNib()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
