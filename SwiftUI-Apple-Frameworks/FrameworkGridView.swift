//
//  FrameworkGridView.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Alex 6.1 on 1/12/21.
//

import SwiftUI

struct FrameworkGridView: View {
    
    //sets the amount of columns and width
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    // loop through the model to data for each object
                    ForEach(MockData.frameworks, id: \.id)  { framework in
                        // loads each framework with image and title
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
        
            .navigationTitle("Apple Frameworks")
        }
        
        
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}

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
