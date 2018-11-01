//
//  TriangleGraphView.swift
//  GraphTriangle
//
//  Created by 고상범 on 2018. 10. 31..
//  Copyright © 2018년 고상범. All rights reserved.
//

import UIKit

class TriangleGraphView: UIView {

    override func draw(_ rect: CGRect) {
       /* let path = UIBezierPath()
        path.addArc(withCenter: CGPoint(x: bounds.midX, y: bounds.midY), radius: 100.0, startAngle: 0, endAngle: 2*CGFloat.pi, clockwise: true)
        path.lineWidth = 5.0
        UIColor.green.setFill()
        UIColor.red.setStroke()
        path.stroke()
        path.fill()
 
 */
        let path = UIBezierPath()
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: (rect.maxX), y: rect.maxY))
        path.addLine(to: CGPoint(x: (rect.maxX / 2.0), y: rect.minY))
        path.close()
        path.stroke()
        
        path.move(to: CGPoint(x: rect.minX + 25, y: rect.maxY-15))
        path.addLine(to: CGPoint(x: rect.maxX-25, y: rect.maxY-15))
        path.addLine(to: CGPoint(x: rect.maxX/2.0, y: rect.minY+35))
        UIColor.lightGray.setStroke()
        path.close()
        path.stroke()
        
        path.move(to: CGPoint(x: rect.minX + 50, y: rect.maxY-30))
        path.addLine(to: CGPoint(x: rect.maxX-50, y: rect.maxY-30))
        path.addLine(to: CGPoint(x: rect.maxX/2.0, y: rect.minY+65))
        UIColor.lightGray.setStroke()
        path.close()
        path.stroke()
        
        path.move(to: CGPoint(x: rect.minX + 75, y: rect.maxY-45))
        path.addLine(to: CGPoint(x: rect.maxX-75, y: rect.maxY-45))
        path.addLine(to: CGPoint(x: rect.maxX/2.0, y: rect.minY+95))
        UIColor.lightGray.setStroke()
        path.close()
        path.stroke()
        
        path.move(to: CGPoint(x: rect.minX + 100, y: rect.maxY-60))
        path.addLine(to: CGPoint(x: rect.maxX-100, y: rect.maxY-60))
        path.addLine(to: CGPoint(x: rect.maxX/2.0, y: rect.minY+125))
        UIColor.lightGray.setStroke()
        path.close()
        path.stroke()
        
        
            
        
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX/2.0, y: (rect.maxY/2.0 + 50)))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.move(to: CGPoint(x: rect.maxX/2.0, y: (rect.maxY/2.0 + 50)))
        path.addLine(to: CGPoint(x: rect.maxX/2.0, y: rect.minY))
        //path.addLine(to: CGPoint(x: rect.maxX/2.0, y: rect.minY+95))
        UIColor.lightGray.setStroke()
        path.close()
        path.stroke()
        
       


}
}
