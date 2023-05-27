//
//  LoginHeaderView.swift
//  AmplitudeTracking
//
//  Created by Bruno Vezoli on 5/27/23.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(self.background)
                .rotationEffect(Angle(degrees: self.angle))

                
            VStack {
                Text(self.title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                Text(self.subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 80)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        .offset(y: -150)
    }
}

struct LoginHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, background: Color.blue)
    }
}
