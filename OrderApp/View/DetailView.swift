//
//  DetailView.swift
//  OrderApp
//
//  Created by Quang Bao on 08/10/2021.
//

import SwiftUI

struct DetailView: View {
    
    @EnvironmentObject var baseData: BaseViewModel
    //For Hero Effect....
    var animation: Namespace.ID
    var body: some View {
        
        //SafeCheck....
        if let product = baseData.currentProduct, baseData.showDetail{
            
            VStack(spacing: 10){
                
                GeometryReader{geo in
                    Image(product.productImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geo.size.width, height: geo.size.height)
                        .edgesIgnoringSafeArea(.top)
                        .matchedGeometryEffect(id: product.productImage, in: animation)
                }
                
                .overlay(
                    HStack{
                        Button {
                            withAnimation{baseData.showDetail = false}
                        } label: {
                            
                            Image(systemName: "arrow.backward")
                                .font(.system(size: 25, weight: .bold))
                                .foregroundColor(.black)
                                .padding(6)
                                .background(.white,in: Circle())
                        }
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            
                            Image(systemName: "heart.fill")
                                .font(.system(size: 22))
                                .foregroundColor(.red)
                                .padding(8)
                                .background(.white,in: Circle())
                        }
                    }
                        .padding()
                    ,alignment: .top
                )
                
                VStack(alignment: .leading, spacing: 10){
                    
                    Text(product.productTitle)
                        .font(.title.bold())
                    
                    HStack{
                        
                        ForEach(1...5, id: \.self){index in
                            Image(systemName: "star.fill")
                                .font(.system(size: 15))
                                .foregroundColor(product.productRating >= index ? .yellow : .gray.opacity(0.2))
                        }
                        
                        Text(" (\(product.productRating).0)")
                            .font(.system(size: 15))
                            .font(.caption.bold())
                            .foregroundColor(.gray)
                        
                        Spacer(minLength: 10)
                        
                        Text(product.productPrice)
                            .font(.title2.bold())
                    }
                    
                    Text("Description")
                    
                    Text("\(product.description)")
                        .lineLimit(5)
                        .foregroundColor(.gray.opacity(0.9))
                }
                .padding()
                .background(
                    Color.white
                )
                .cornerRadius(30)
//                .offset(y: -30)
                .offset(y: -50)
                
                
                
                HStack{
                    Button(action: {}, label: {
                        Text("View Cart")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                            .frame(width: 150, height: 40, alignment: .center)
                            .background(.gray, in: RoundedRectangle(cornerRadius: 12))
                    })
                    
                    Spacer(minLength: 10)
                    
                    Button(action: {}, label: {
                        Text("Add to Cart")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                            .frame(width: 150, height: 40, alignment: .center)
                            .background(.pink, in: RoundedRectangle(cornerRadius: 12))
                    })
                }
                .padding(.horizontal)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .background(.white)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Extending  View to get screen Bounds....
//extension View{
//
//    func getScreenBounds() -> CGRect {
//        return UIScreen.main.bounds
//    }
//}
