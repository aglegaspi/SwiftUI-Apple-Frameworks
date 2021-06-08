//
//  FrameworkGridView.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Alex 6.1 on 1/12/21.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                LazyVGrid(columns: viewModel.columns) {
                    
                    // loop through the model to data for each object
                    ForEach(MockData.frameworks, id: \.id)  { framework in
                        // loads each framework with image and title
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView, content: {
                // when you tap on a framework you initialize a FrameworkDetailView, we're relying on the data from the previous screen
                // we use that previous data and create our viewModel here here and inject that into our FrameworkDetailView
                FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: viewModel.selectedFramework!,
                                                                        isShowingDetailView: $viewModel.isShowingDetailView))
            })
        }
        
        
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}


