//
//  ViewController.swift
//  PageTheScroll
//
//  Created by Anna Kovsh on 7/12/17.
//  Copyright © 2017 Anna Kovsh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var images = [UIImageView]()
    
    @IBOutlet weak var sunnyScrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var contentWidth: CGFloat = -sunnyScrollView.frame.size.width
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            newX = sunnyScrollView.frame.size.width / 2 + sunnyScrollView.frame.size.width * CGFloat(x)
            
            contentWidth += newX
            
            sunnyScrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: (sunnyScrollView.frame.size.height / 2) - 75, width: 150, height: 150)
        }
        
        sunnyScrollView.clipsToBounds = false
        sunnyScrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }


}

