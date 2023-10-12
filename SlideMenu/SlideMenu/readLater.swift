//
//  readLater.swift
//  slideMenuOrSideMenu
//
//  Created by Imcrinox Mac on 23/12/1444 AH.
//

import Foundation
import UIKit

class readLater : UIViewController {
    
    override func viewDidLoad() {
        self.navigationController?.isNavigationBarHidden = true
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
}
