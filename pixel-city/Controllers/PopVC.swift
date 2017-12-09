//
//  PopVC.swift
//  pixel-city
//
//  Created by Robert Haddad on 12/9/17.
//  Copyright © 2017 Robert Haddad. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {
    @IBOutlet weak var popImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel?
    
    var pastImage: UIImage!
    var titleText: String!
    
    func initData(forImage image: UIImage, forTitle title: String) {
        self.pastImage = image
        self.titleText = title
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = pastImage
        titleLbl?.text = titleText
        addDoubleTap()
        
    }
    
    func addDoubleTap(){
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenWasDoubleTapped(){
        dismiss(animated: true, completion: nil)
    }
}
