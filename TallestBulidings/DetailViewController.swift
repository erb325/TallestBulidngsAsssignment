//
//  DetailViewController.swift
//  TallestBuildings
//
//  Created by Ember Baker on 4/11/16.
//  Copyright © 2016 Ember Baker. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    var website: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.loadRequest(NSURLRequest(URL: NSURL(string: website)!))

    }
    
}
