//
//  ViewController.swift
//  MinimumWKWebView
//
//  Created by Suita Fujino on 2018/07/14.
//  Copyright © 2018年 Suita Fujino. All rights reserved.
//

import UIKit
import WebKit

class WKWViewController: UIViewController, WKNavigationDelegate {
    
    var wkWebView = WKWebView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        wkWebView.navigationDelegate = self
        wkWebView.frame = view.frame
        
        view.addSubview(wkWebView)
    }

    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        decisionHandler(.allow)
    }
}
