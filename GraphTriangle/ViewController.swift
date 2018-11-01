//
//  ViewController.swift
//  GraphTriangle
//
//  Created by 고상범 on 2018. 10. 31..
//  Copyright © 2018년 고상범. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var triangleView: TriangleGraphView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let startPath = UIBezierPath()
        startPath.move(to: CGPoint(x: triangleView.bounds.maxX/2.0, y: (triangleView.bounds.maxY/2.0 + 50)))
        startPath.addLine(to: CGPoint(x: triangleView.bounds.maxX/2.0, y: (triangleView.bounds.maxY/2.0 )))
        startPath.addLine(to: CGPoint(x: (triangleView.bounds.maxX/2.0+20), y: (triangleView.bounds.maxY/2.0 + 50)))
        startPath.addLine(to: CGPoint(x: (triangleView.bounds.maxX/2.0), y: (triangleView.bounds.maxY/2.0 + 50)))
       // path.lineWidth = 5.0
        startPath.close()
        
        let endPath = UIBezierPath()
        endPath.move(to: CGPoint(x: triangleView.bounds.maxX/2.0, y: (triangleView.bounds.maxY/2.0 + 50)))
        endPath.addLine(to: CGPoint(x: triangleView.bounds.maxX/2.0, y: (triangleView.bounds.maxY/2.0 )))
        endPath.addLine(to: CGPoint(x: (triangleView.bounds.maxX), y: (triangleView.bounds.maxY)))
        endPath.addLine(to: CGPoint(x: (triangleView.bounds.maxX/2.0), y: (triangleView.bounds.maxY/2.0 + 50)))
     
        
        let rectangleLayer = CAShapeLayer()
        rectangleLayer.path = startPath.cgPath
        rectangleLayer.fillColor = UIColor.lightGray.cgColor
        triangleView.layer.addSublayer(rectangleLayer)
        
        let zoomAnimation = CABasicAnimation()
        zoomAnimation.keyPath = "path"
        zoomAnimation.duration = 2.0
        zoomAnimation.toValue = endPath.cgPath
        zoomAnimation.fillMode = CAMediaTimingFillMode.forwards
        zoomAnimation.isRemovedOnCompletion = false
        rectangleLayer.add(zoomAnimation, forKey: "zoom")
  
    }
    
    }




