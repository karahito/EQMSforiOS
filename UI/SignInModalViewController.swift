//
//  SignInModalViewController.swift
//  EQMSforiOS
//
//  Created by BusinessSoftMac on 2018/06/12.
//  Copyright © 2018年 JapanMicroSystem. All rights reserved.
//

import UIKit
import MaterialComponents
import SVGKit

class SignInModalViewController: UIViewController {

    @IBOutlet weak var operatorID: UITextField!
    @IBOutlet weak var signIn: MDCButton!
    @IBAction func didTapSignIn(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setProperty()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setProperty(){
        
        let buttonScheme = MDCButtonScheme()
        // ButtonTheme:Outlineを適用
        MDCOutlinedButtonThemer.applyScheme(buttonScheme, to: signIn)
        // Imageを右側に配置
        signIn.semanticContentAttribute = .forceRightToLeft
        setImage(view: signIn, image: SVGKImage(named: "sign-in-alt"))
        
        operatorID.addBorderButton(height: 1.0, color: UIColor.magenta)
        operatorID.placeholder = "社員番号";
    }
    
    private func setImage(view:MDCButton,image:SVGKImage){
//        image.size = CGSize(width: view.bounds.height / 2 , height: view.bounds.height)
        image.size = CGRect(x: 0, y: 0, width: 44, height: 44).size
        view.setImage(image.uiImage, for: .normal)
        view.imageView?.contentMode = .scaleAspectFit
//        view.imageView?.contentMode = .scaleToFill
//        view.imageRect(forContentRect: CGRect(x: 0, y: 0, width: 24, height: 24))
//        let imageMargine = [image.size.height / 2,image.size.width]
//        view.imageEdgeInsets = .init(top: imageMargine[0], left: imageMargine[1], bottom: imageMargine[0], right: imageMargine[1])
//        view.titleEdgeInsets = .init(top: imageMargine[0], left: imageMargine[1], bottom: imageMargine[0], right: imageMargine[1])
//        view.titleEdgeInsets = .init(top: 0, left: 0, bottom: 0, right: 8)
//        view.imageEdgeInsets = .init(top: 8, left: 8, bottom: 8, right: 8)
        
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

extension UITextField{
    func addBorderButton(height:CGFloat,color:UIColor){
        let border = CALayer()
        border.frame = CGRect(x: 0, y: self.frame.height - height, width: self.frame.width, height: height)
        border.backgroundColor = color.cgColor
        self.layer.addSublayer(border)
    }
}
