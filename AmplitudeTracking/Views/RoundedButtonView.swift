//
//  RoundedButtonView.swift
//  AmplitudeTracking
//
//  Created by Bruno Vezoli on 5/27/23.
//

import SwiftUI

struct RoundedButtonView: View {
    let text: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(self.background)
                
                Text(self.text)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
        .padding(.top, 20)
        .padding(.bottom, 10)
    }
}

struct RoundedButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedButtonView(text: "Click", background: Color.blue) {
            
        }
    }
}
