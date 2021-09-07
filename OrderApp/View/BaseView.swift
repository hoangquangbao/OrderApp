//
//  BaseView.swift
//  OrderApp
//
//  Created by Quang Bao on 06/09/2021.
//

import SwiftUI

struct BaseView: View {
    
    @StateObject var baseData = BaseViewModel()
    
    // Hiding Tab Bar....
    init() {
        
        UITabBar.appearance().isHidden = true
    }
    
    var  body: some View {
        
        Text("Ạksnsjkndsgnks")
        
        TabView(selection: $baseData.currentTab) {
            
            Text("home")
                .tag(TabList.Home)
            
            Text("heart")
                .tag(TabList.Heart)
            
            Text("clipboard")
                .tag(TabList.Clipboard)
            
            Text("person")
                .tag(TabList.Person)
        }
        .overlay(
            
            // Custom Tab Bar....
            HStack(spacing: 10) {
            
            // tabButton....
            TabButton(Tab: .Home)
            TabButton(Tab: .Heart)
            TabButton(Tab: .Clipboard)
            TabButton(Tab: .Person)
        }
            ,alignment: .bottom
        )
    }
    
    @ViewBuilder
    func TabButton(Tab: TabList) -> some View {
        
        Button {
            
            withAnimation {
                baseData.currentTab = Tab
            }
        } label: {
            
            Image(Tab.rawValue)
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .frame(width: 25, height: 25)
                //Lần load đầu tiên sẽ cho nổi bật phím Home (@Published var currentTab: Tab = .Home)
                .foregroundColor(baseData.currentTab == Tab ? Color.gray : Color.gray.opacity(0.5))
                .frame(maxWidth: .infinity)
        }

    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
