//
//  PrimarySplitViewController.swift
//  DisplayLyricProgram
//
//  Created by Ashutosh on 9/27/17.
//  Copyright © 2017 Ashutosh. All rights reserved.
//

import UIKit

class PrimarySplitViewController: UISplitViewController,
UISplitViewControllerDelegate {
    
    override func viewDidLoad() {
        self.delegate = self
        self.preferredDisplayMode = .allVisible
    }
    
    func splitViewController(
        _ splitViewController: UISplitViewController,
        collapseSecondary secondaryViewController: UIViewController,
        onto primaryViewController: UIViewController) -> Bool {
        // Return true to prevent UIKit from applying its default behavior
        return true
    }
}
