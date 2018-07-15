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
        
        if let url = URL(string: "https://www.yahoo.co.jp/") {
            let request = URLRequest(url: url)
            wkWebView.load(request)
        }
        
        view.addSubview(wkWebView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        decisionHandler(.allow)
    }
}
