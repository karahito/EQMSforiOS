//
//  MainViewController.swift
//  EQMSforiOS
//
//  Created by BusinessSoftMac on 2018/06/08.
//  Copyright © 2018年 JapanMicroSystem. All rights reserved.
//

import UIKit
import MaterialComponents
import SVGKit

class MainViewController: UIViewController {
    
    private let LARGE_FAB_EDGE:CGFloat = 16.0
    private let SMALL_FAB_EDGE:CGFloat = 8.0
    private let NAVIGATION_BARTINT = UIColor(red: 63/255, green: 81/255, blue: 181/255, alpha: 1)
    private let NAVIGATION_TINT = UIColor.white
    
    @IBAction func didTapScaner(_ sender: Any) {
    }
    
    @IBAction func didTapEditor(_ sender: Any) {
    }
    @IBAction func didTapOpener(_ sender: Any) {
        setHiddenFAB()
        toggleOpener()
    }
    @IBOutlet weak var editor: MDCFloatingButton!
    @IBOutlet weak var scaner: MDCFloatingButton!
    @IBOutlet weak var opener: MDCFloatingButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setNavigationBarProperty()
        scaner.isHidden = true
        editor.isHidden = true
        setUpButtonProperty()
        setUpImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setUpImages(){
        let openerImage = SVGKImage(named: "plus")
        opener.setImage(openerImage?.uiImage, for: .normal)
        opener.imageEdgeInsets = .init(top: LARGE_FAB_EDGE, left: LARGE_FAB_EDGE, bottom: LARGE_FAB_EDGE, right: LARGE_FAB_EDGE)
    
        let scanerImage = SVGKImage(named: "barcode")
        scaner.setImage(scanerImage?.uiImage, for: .normal)
        scaner.imageEdgeInsets = .init(top: SMALL_FAB_EDGE, left: SMALL_FAB_EDGE, bottom: SMALL_FAB_EDGE, right: SMALL_FAB_EDGE)
        
        let editorImage = SVGKImage(named: "edit")
        editor.setImage(editorImage?.uiImage, for: .normal)
        editor.imageEdgeInsets = .init(top: SMALL_FAB_EDGE, left: SMALL_FAB_EDGE, bottom: SMALL_FAB_EDGE, right: SMALL_FAB_EDGE)
    }
    
    private func setUpButtonProperty(){
        let size = opener.bounds.size
        editor.bounds.size = CGSize(width: size.width * 0.666, height: size.height * 0.666)
    }
    /**
     *  NavigationBarのプロパティをset
     */
    private func setNavigationBarProperty(){
        // NavigationBarの透過設定
        navigationController?.navigationBar.isTranslucent = true
        // NavigationBarの背景色
        navigationController?.navigationBar.barTintColor = NAVIGATION_BARTINT
        navigationController?.navigationBar.tintColor = NAVIGATION_TINT
        
        let menuImage = SVGKImage(named: "bars")!
        menuImage.size = CGSize(width: 28, height: 28)
        // NavigationBarの左にボタンを配置 SlideMenuControllerSwift特有プロパティ
        addLeftBarButtonWithImage(menuImage.uiImage)
        
    }
    private func toggleOpener(){
        let stat = editor.isHidden
        switch stat {
        case true:
            let openerImage = SVGKImage(named: "plus")
            opener.setImage(openerImage?.uiImage, for: .normal)
        default:
            let openerImage = SVGKImage(named: "times")
            opener.setImage(openerImage?.uiImage, for: .normal)
        }
    }
    
    private func setHiddenFAB(){
        editor.isHidden = !(editor.isHidden)
        scaner.isHidden = !(scaner.isHidden)
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
