//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Mehmet Ali Er on 24.01.2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    @Binding var isshowDetailShow : Bool
    var framework : Framework
    
    var body: some View {
        
        
        VStack(){
            HStack(){
                Spacer()
                Button {
                    isshowDetailShow = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44,height: 44)
                }
            }.padding()
           
            Spacer()
            FrameWorkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            Button {
                
            } label: {
             AFButton(title: "Learn More")
            }

        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(isshowDetailShow:.constant(false), framework: MockData.sampleFramework)
    }
}
