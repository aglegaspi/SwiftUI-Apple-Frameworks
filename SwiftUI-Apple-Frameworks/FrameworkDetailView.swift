//
//  FrameworkDetailView.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Alex 6.1 on 1/14/21.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    
    var body: some View {
        VStack {
            Spacer()
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
        
            Button {
                
            } label: {
                Text("Learn More")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 280,height: 50)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework)
    }
}
