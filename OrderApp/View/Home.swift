//
//  Home.swift
//  OrderApp
//
//  Created by Quang Bao on 09/09/2021.
//

import SwiftUI

struct Home: View {
    
    //Matched geometry Effect....
    @Namespace var animation
    @EnvironmentObject var baseData: BaseViewModel
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false){
            
            VStack(spacing: 15){
                
                HStack{
                     
                    Button {
                        
                    } label: {
                        
                        Image(systemName: "line.3.horizontal")
                            .font(.system(size: 25, weight: .bold))
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        
                        Image(systemName: "heart.fill")
                            .font(.system(size: 25, weight: .bold))
                    }

                }
                .foregroundColor(.red)
                
                .overlay(Image("Market Easy Way Logo 2")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 200)
                )
                
                HStack{
                    
                    Text("Our Production")
                        .font(.title2.bold())
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        
                        HStack(spacing: 3){
                            
                            Text("Softby")
                                .font(.caption.bold())
                            
                            Image(systemName: "chevron.down")
                                    .font(.caption.bold())
                        }
                        .foregroundColor(.gray)
                    }
                }
                .padding(.top,20)
                
                // Custom segment tab....
                ScrollView(.horizontal, showsIndicators: false){
                    
                    HStack(spacing: 18){
                        
                        //Segmenttab....
                        SegmentButton(image: "Breakfood", title: "Breakfood")
                        
                        SegmentButton(image: "Lunch", title: "Lunch")
                        
                        SegmentButton(image: "Dinner", title: "Dinner")
                    }
                }
            }
            .padding()
        }
    }
    
    @ViewBuilder
    func SegmentButton(image: String, title: String) -> some View {
        
        Button {
            
            //withAnimation(baseData.homeTab = title, <#() throws -> _#>)
            //withAnimation(<#T##animation: Animation?##Animation?#>, <#T##body: () throws -> Result##() throws -> Result#>)
            withAnimation{baseData.homeTab = title}
        } label: {
            
            HStack(spacing: 8){
                
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 27, height: 27)
                    .cornerRadius(10)
                
                Text(title)
                    .font(.system(size: 12.5))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }
            .padding(.vertical,8)
            .padding(.horizontal,12)
            .background(
                
                ZStack{
                
                //Transition Slider....
                if baseData.homeTab == title{
                    
                    RoundedRectangle(cornerRadius: 10)
                    //.fill(style: <#T##FillStyle#>)
                        .fill(Color.gray.opacity(0.1))
                        .matchedGeometryEffect(id: "TAB", in: animation)
                        //.shadow(color: .black.opacity(0.04), radius: 5, x: 5, y: 5)
                }
            }
            )
        }

    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
