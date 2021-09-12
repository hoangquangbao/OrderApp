//
//  BaseViewModel.swift
//  OrderApp
//
//  Created by Quang Bao on 06/09/2021.
//

import SwiftUI

class BaseViewModel: ObservableObject {
    
    // Tab Bar...
    @Published var currentTab: TabList = .Home
    
    @Published var homeTab = "Breakfood"
}

// Enum Case for Tab Items....
enum TabList: String {
    
    case Home = "home"
    case Heart = "heart"
    case Clipboard = "clipboard"
    case Person = "person"
}
