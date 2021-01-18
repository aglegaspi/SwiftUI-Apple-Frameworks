//
//  FrameworkGridViewModel.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Alex 6.1 on 1/15/21.
//

import SwiftUI

// allows object to publish/broadcast information.
final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    @Published var isShowingDetailView = false
    
    //sets the amount of columns and width
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
}
