//
//  MenuViewController.swift
//  EQMSforiOS
//
//  Created by BusinessSoftMac on 2018/06/11.
//  Copyright © 2018年 JapanMicroSystem. All rights reserved.
//

import UIKit
import SVGKit
import MaterialComponents

class MenuViewController: UIViewController {

    private let IMAGE_SIZE = CGSize(width: 24.0, height: 24.0)
    @IBOutlet weak var operatorImage: UIImageView!
    @IBOutlet weak var editor: MDCFlatButton!
    
    @IBOutlet weak var scaner: MDCFlatButton!
    @IBOutlet weak var commit: MDCFlatButton!
    
    @IBOutlet weak var signOut: MDCFlatButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setPropertry()
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    private func setPropertry(){
        setImage(view: operatorImage, image: SVGKImage(named: "user-tie")!)
        setImage(view: editor, image: SVGKImage(named: "edit")!)
        setImage(view: scaner, image: SVGKImage(named: "barcode")!)
        setImage(view: commit, image: SVGKImage(named: "cube")!)
        setImage(view: signOut, image: SVGKImage(named: "sign-out-alt")!)
        
    }
    private func setImage(view:UIImageView,image:SVGKImage){
        image.size = view.bounds.size
        view.image = image.uiImage
    }
    
    private func setImage(view:MDCFlatButton,image:SVGKImage){
        image.size = IMAGE_SIZE
        view.setImage(image.uiImage, for: .normal)
        let imageMargine = [image.size.height / 2,image.size.width]
//        view.imageEdgeInsets = .init(top: imageMargine[0], left: imageMargine[1], bottom: imageMargine[0], right: imageMargine[1])
        view.titleEdgeInsets = .init(top: imageMargine[0], left: imageMargine[1], bottom: imageMargine[0], right: imageMargine[1])
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
