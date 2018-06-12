//
//  EditModalViewController.swift
//  EQMSforiOS
//
//  Created by BusinessSoftMac on 2018/06/12.
//  Copyright © 2018年 JapanMicroSystem. All rights reserved.
//

import UIKit
import MaterialComponents
import SVGKit

class EditModalViewController: UIViewController {

    @IBOutlet weak var itemCode: UITextField!
    @IBOutlet weak var search: MDCButton!
    @IBAction func didTapSearch(_ sender: Any) {
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
        itemCode.addBorderButton(height: 1.0, color: UIColor.magenta)
        itemCode.placeholder = "備品番号";
        
        let buttonScheme = MDCButtonScheme()
        MDCOutlinedButtonThemer.applyScheme(buttonScheme, to: search)
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


