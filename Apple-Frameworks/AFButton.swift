//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Mehmet Ali Er on 24.01.2024.
//

import SwiftUI

struct AFButton: View {
    var title : String
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280,height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(15)
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title: "Test Title")
    }
}
