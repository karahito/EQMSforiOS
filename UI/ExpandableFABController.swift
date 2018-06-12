//
//  ExpandableFABController.swift
//  EQMSforiOS
//
//  Created by BusinessSoftMac on 2018/06/11.
//  Copyright © 2018年 JapanMicroSystem. All rights reserved.
//

import UIKit
import MaterialComponents
import SVGKit

class ExpandableFABController: UIViewController {

    private let IMAGE_SIZE:CGFloat = 24
    
    @IBOutlet weak var child: UIStackView!
    @IBOutlet weak var opener: MDCFloatingButton!
    @IBOutlet weak var editor: MDCFloatingButton!
    @IBOutlet weak var scaner: MDCFloatingButton!
    
    @IBAction func didTapOpener(_ sender: Any) {
        let state = child.isHidden
        switch state {
        case true:
            setFABImage(view: opener, image: SVGKImage(named: "times")!)
        default:
            setFABImage(view: opener, image: SVGKImage(named: "plus")!)
        }
        child.isHidden = !state
    }
    @IBAction func didTapEditor(_ sender: Any) {
    }
    @IBAction func didTapScaner(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initProperty()
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

    private func initProperty(){
        child.isHidden = true
        
        setFABImage(view: opener, image: SVGKImage(named:"plus")!)
        setFABImage(view: editor, image: SVGKImage(named: "edit")!)
        setFABImage(view: scaner, image: SVGKImage(named: "barcode")!)
    }
    
    private func setFABImage(view:MDCFloatingButton,image:SVGKImage){
//        image.size = CGSize(width: IMAGE_SIZE, height: IMAGE_SIZE)
        image.size = view.bounds.size
//        let margin = (view.bounds.size.width - image.size.height) / 2
        let margin = view.bounds.size.width / 3
        view.imageEdgeInsets = .init(top: margin, left: margin, bottom: margin, right: margin)
        view.setImage(image.uiImage, for: .normal)
    }
}
