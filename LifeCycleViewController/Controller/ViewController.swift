//
//  ViewController.swift
//  LifeCycleViewController
//
//  Created by Артем on 14/03/2019.
//  Copyright © 2019 Gukov.space. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getInfo()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getInfo()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        getInfo()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        getInfo()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        getInfo()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        getInfo()

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        getInfo()
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        getInfo()
    }
    
    func getInfo(_ function: String = #function) {
        
        let fullInformation = "\(title!) : \(function)\n"
        infoList.append(fullInformation)
        
        let showText = infoList.joined(separator: "\n")
        textView.text = showText
        viewLabel.text = "\(title!)"
        
        guard !showText.isEmpty else { return }
        let range = NSRange(location: showText.count - 1, length: 1)
        textView.scrollRangeToVisible(range)
    }
}
