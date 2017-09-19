//
//  PopVC.swift
//  MapImplementation
//
//  Created by Staham Nguyen on 19/09/2017.
//  Copyright © 2017 Staham Nguyen. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var popImageView: UIImageView!
    
    private var passedImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addDoubleTap()
        
        popImageView.image = passedImage
    }
    
    func initData(forImage image: UIImage) {
        self.passedImage = image
    }
    
    private func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(dismissVC))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc private func dismissVC() {
        dismiss(animated: true, completion: nil)
    }
}
