//
//  AutoLayoutViewController.swift
//  AutoLayoutConstraints
//
//  Created by Max Taylor on 2/15/19.
//  Copyright © 2019 Max Taylor. All rights reserved.
//

import UIKit

class AutoLayoutViewController: UIViewController {
    
    let imageView = UIImageView()
    var leadingConstraint: NSLayoutConstraint?
    var trailingConstraint: NSLayoutConstraint?
    var topConstraint: NSLayoutConstraint?
    var bottomConstraint: NSLayoutConstraint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        imageView.addGestureRecognizer(tapGesture)
        
        imageView.isUserInteractionEnabled = true
        imageView.isMultipleTouchEnabled = true
        
        imageView.image = UIImage(named: "T1.jpg")
        imageView.contentMode = .scaleAspectFit
        view.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        setUpConstraints()

        // Do any additional setup after loading the view.
    }
    
    @objc func imageTapped(gesture: UIGestureRecognizer) {
        if (gesture.view as? UIImageView) != nil {
            imgPressed()
        }
    }
    
    func imgPressed() {
        if(imageView.image == UIImage(named: "T1.jpg")) {
            imageView.image = UIImage(named: "AngryT1.jpg")
        } else {
            imageView.image = UIImage(named: "T1.jpg")
        }
    }
    
    
    func setUpConstraints() {
        leadingConstraint = NSLayoutConstraint(item: imageView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 20)
        trailingConstraint = NSLayoutConstraint(item: imageView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: -20)
        topConstraint = NSLayoutConstraint(item: imageView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 20)
        bottomConstraint = NSLayoutConstraint(item: imageView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: -20)
        
        leadingConstraint?.isActive = true
        trailingConstraint?.isActive = true
        topConstraint?.isActive = true
        bottomConstraint?.isActive = true
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
