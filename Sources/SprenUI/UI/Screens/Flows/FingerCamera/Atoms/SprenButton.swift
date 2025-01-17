//
//  SprenButton.swift
//  SprenUI
//
//  Created by Keith Carolus on 1/25/22.
//

import SwiftUI

struct SprenButton: View {
    let title: String
    let action: () -> Void
    
    let height = Autoscale.scaleFactor * 60
    let cornerRadius = Autoscale.scaleFactor * 6
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 16, weight: .semibold))
                .frame(maxWidth: .infinity)
                .frame(height: height)
                .foregroundColor(.white)
                .background(Color.sprenUIPrimaryColor)
                .cornerRadius(.infinity)
        }
    }
}

struct SprenButton_Previews: PreviewProvider {
    static var previews: some View {
        SprenButton(title: "Do an HRV reading", action: {})
            .padding(24)
    }
}
