//
//  FrameworkTitleView.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Alex 6.1 on 1/17/21.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    // passing in framework for each iteration
    let framework: Framework
    
    var body: some View {
        VStack {
            
            // obtains imageName from the model
            Image(framework.imageName)
                .resizable()
                .frame(width: 90,height: 90)
            
            // obtains name from the model
            Text(framework.name)
                .font(.title3)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
        
    }
    
    
}

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleView(framework: MockData.sampleFramework)
    }
}
