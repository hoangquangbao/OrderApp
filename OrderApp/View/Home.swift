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
                    
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 25, weight: .bold))
                }
                
            }
            .foregroundColor(.black)
            
            .overlay(Image("DiLuuQuan Logo")
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
                    SegmentButton(icon: "sun.and.horizon.fill", title: "Breakfood")
                    
                    SegmentButton(icon: "sun.max.fill", title: "Lunch")
                    
                    SegmentButton(icon: "moon.stars.fill", title: "Dinner")
                }
            }
            
            
            //Product View
            let columns = Array(repeating: GridItem(.flexible(), spacing: 10), count: 2)
            
            ScrollView(.vertical, showsIndicators: false){
                //Grid View....
                LazyVGrid(columns: columns, spacing: 10) {
                    
                    //Product....
                    if baseData.homeTab == "Breakfood" {
                        ForEach(breakfood){product in
                            CardView(product: product)
                                .onTapGesture {
                                    withAnimation {
                                        baseData.currentProduct = product
                                        baseData.showDetail = true
                                    }
                                }
                        }
                    } else if baseData.homeTab == "Lunch" {
                        ForEach(lunch){product in
                            CardView(product: product)
                                .onTapGesture {
                                    withAnimation {
                                        baseData.currentProduct = product
                                        baseData.showDetail = true
                                    }
                                }
                        }
                    } else if baseData.homeTab == "Dinner" {
                        ForEach(dinner){product in
                            CardView(product: product)
                                .onTapGesture {
                                    withAnimation {
                                        baseData.currentProduct = product
                                        baseData.showDetail = true
                                    }
                                }
                        }
                    }
                }
            }
        }
        .padding()
        .padding(.bottom,30)
        
        .overlay(
            DetailView(animation: animation)
                .environmentObject(baseData))
    }
    
    
    @ViewBuilder
    func CardView(product: Product) -> some View {
        
        VStack(spacing: 8){
            
            HStack(){
                
                if(product.freeDelivery){
                    Text("FREE DELIVERY")
                        .font(.system(size: 8, weight: .bold))
                        .foregroundColor(.white)
                        .padding(5)
                        .background(.red)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                Button {
                    
                } label: {
                    Image(systemName: "suit.heart.fill")
                        .font(.system(size: 13))
                        .foregroundColor(product.isLike ? .white : .gray)
                        .padding(5)
                        .background(
                            Color.red.opacity(product.isLike ? 1 : 0),
                            in: Circle()
                        )
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
            }
            
            Image(product.productImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 250)
            
            
//                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)

                //.frame(maxWidth: .infinity, maxHeight: .infinity)
                //.cornerRadius(3)
                .rotationEffect(.init(degrees: -5))
                .matchedGeometryEffect(id: product.productImage, in: animation)
            
            Text(product.productTitle)
                .fontWeight(.semibold)
                .lineLimit(2)
                .padding(.top)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            //Start View....
            HStack(spacing: 2){
                
                ForEach(1...5, id: \.self){index in
                    Image(systemName: "star.fill")
                        .font(.system(size: 9))
                        .foregroundColor(product.productRating >= index ? .yellow : .gray.opacity(0.2))
                }
                
                Text(" (\(product.productRating).0)")
                    .font(.caption.bold())
                    .foregroundColor(.gray)
                
                Spacer()
                
                Text(product.productPrice)
                    .fontWeight(.bold)
                    .padding(.trailing, 2)
//                    .foregroundColor(.yel)
            }
        }
        .padding(5)
        .background(Color.gray.opacity(0.1), in: RoundedRectangle(cornerRadius: 12))
    }
    
    
    @ViewBuilder
    func SegmentButton(icon: String, title: String) -> some View {
        
        Button {
            withAnimation{baseData.homeTab = title}
        } label: {
            
            HStack(spacing: 8){
                
                Image(systemName: icon)
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
                    
                    // Dùng để di chuyển hình nền của các Tab
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
