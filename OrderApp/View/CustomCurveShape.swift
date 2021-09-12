//
//  CustomCurveShape.swift
//  OrderApp
//
//  Created by Quang Bao on 08/09/2021.
//

import SwiftUI

//tabCurve shape....
struct CustomCurveShape: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        return Path{path in
            
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            
            
            //center Curve....
            let mid = rect.width / 2

            path.move(to: CGPoint(x: mid - 70, y: 0))

            let to1 = CGPoint(x: mid, y: 45)
            let control1 = CGPoint(x: mid - 35, y: 0)
            let control2 = CGPoint(x: mid - 35, y: 45)
            path.addCurve(to: to1, control1: control1, control2: control2)


            let to2 = CGPoint(x: mid + 70, y: 0)
            let control3 = CGPoint(x: mid + 35, y: 45)
            let control4 = CGPoint(x: mid + 35, y: 0)
            path.addCurve(to: to2, control1: control3, control2: control4)
        }
    }
}

struct CustomCurveShape_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
