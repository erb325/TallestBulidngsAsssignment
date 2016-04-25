//
//  WebViewController.swift
//  TallestBuildings
//
//  Created by Ember Baker on 4/11/16.
//  Copyright © 2016 Ember Baker. All rights reserved.
//

import Foundation
import UIKit

class WebViewController: UIViewController {
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //webviewInstance.loadRequest(NSURLRequest(URL: NSURL(string: "google.ca")!))
        
        webView.loadRequest(NSURLRequest(URL: NSURL(string: "http://skyscrapercenter.com/buildings")!))

    }
}
