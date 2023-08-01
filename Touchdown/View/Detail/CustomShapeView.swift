//
//  CustomShapeView].swift
//  Touchdown
//
//  Created by Kaloyan Petkov on 1.08.23.
//

import SwiftUI

struct CustomShapeView: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight],  cornerRadii: CGSize(width: 35, height: 35))
        return Path(path.cgPath)
    }
}

struct CustomShapeView__Previews: PreviewProvider {
    static var previews: some View {
        CustomShapeView()
            .previewLayout(.fixed(width: 428, height: 120))
            .padding()
    }
}
