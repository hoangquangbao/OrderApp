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
        
        // Khởi động App cho default ở tab Home "@Published var currentTab: TabList = .Home"
        TabView(selection: $baseData.currentTab) {
            
            Text("home")
            // Should be zoom in before apply Color
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black.opacity(0.04))
                .tag(TabList.Home)
            
            Text("heart")
                .tag(TabList.Heart)
            
            Text("clipboard")
                .tag(TabList.Clipboard)
            
            Text("person")
                .tag(TabList.Person)
        }
        //.background(Color.black)
        .overlay(
            
            // Custom Tab Bar....
            HStack(spacing: 10) {
            
            // tabButton....
            TabButton(Tab: .Home)
            TabButton(Tab: .Heart)
            
            //Center curved button....
            Button {
                
            } label: {
                
                Image("cart")
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 26, height: 26)
                    .offset(x: -1)
                    .foregroundColor(.white)
                    .padding(18)
                    .background(Color.blue)
                    .clipShape(Circle())
                
                //shadows....
//                    .shadow(color: .black.opacity(0.04),
                    .shadow(color: .red,
                            radius: 5,
                            x: 5,
                            y: 5)
//                    .shadow(color: .black.opacity(0.04),
                    .shadow(color: .green,
                            radius: 5,
                            x: -5,
                            y: 5)
            }
            .offset(y: -30)
            

                
            TabButton(Tab: .Clipboard)
            TabButton(Tab: .Person)
        }
                .background(Color.white.clipShape(CustomCurveShape())
                                .shadow(color: .red,
                                        radius: 5,
                                        x: -5,
                                        y: -5)
                           )
//                .shadow(color: .black.opacity(0.04),
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
                .foregroundColor(baseData.currentTab == Tab ? Color.orange : Color.gray.opacity(0.5))
                .frame(maxWidth: .infinity)
        }

    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
