//
//  SwiftJSLib.swift
//  SwiftJSLib
//
//  Created by MA-15 on 19/12/22.
//

import Foundation
import WebKit

public class WebkitClass: NSObject {

    override public init() {}
    public lazy var webView: WKWebView = {
        let webView = WKWebView()
        webView.translatesAutoresizingMaskIntoConstraints = false
        return webView
    }()

    public func configureWebview (view: UIView){
        view.addSubview(webView)
        NSLayoutConstraint.activate([
            webView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            webView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            webView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
            webView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor)
        ])
        let contentController = self.webView.configuration.userContentController
        //contentController.add(self.webView as! WKScriptMessageHandler, name: "toggleMessageHandler")
        contentController.add(self, name: "toggleMessageHandler")
        webView.backgroundColor = UIColor.clear
        webView.isOpaque = false

        //webView.uiDelegate = self
        //webView.navigationDelegate = self
        let bundle = Bundle(for: WebkitClass.self)
        //[[NSBundle bundleForClass:[WebkitClass class]] URLForResource:@"indexA" withExtension:@".html"];

        //let bundle = Bundle(for: Self.self)
        //if let url = bundle.url(forResource: "indexA", withExtension: "html") {
        //print(bundle)
        //print(Bundle(for: WebkitClass.self).url(forResource: "indexA", withExtension: ".html")!)
    
        if var url = Bundle(for: WebkitClass.self).url(forResource: "indexA", withExtension: ".html") {
            //url = URL(string: "https://www.google.com/")!
             webView.loadFileURL(url, allowingReadAccessTo: url.deletingLastPathComponent())
            //let url = URL(string: "https://www.google.com/")
            //let requestObj = URLRequest(url: url! as URL)
            //webView.load(requestObj)

            //webView.loadRequest(NSURLRequest(URL: NSURL(string: "https://www.google.com/")))

        }
    }
}

extension WebkitClass: WKScriptMessageHandler {
    
    public func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        guard let dict = message.body as? [String : AnyObject] else {
            return
        }

        print(dict)
    }
}

