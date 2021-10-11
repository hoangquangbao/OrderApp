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
            
            VStack(spacing: 0){
                
                //top bar....
                HStack{
                    
                    Button {
                        withAnimation{baseData.showDetail = false}
                    } label: {
                        
                        Image(systemName: "arrow.backward")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(.black)
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        
                        Image(systemName: "heart.fill")
                            .foregroundColor(.white)
                            .padding(6)
                            .background(.red,in: Circle())
                            //.font(.system(size: 25, weight: .bold))
                        
//                        Image(systemName: "suit.heart.fill")
//                            .font(.system(size: 27, weight: .bold))
                    }
                    
                }
                //.foregroundColor(.black)
                //.padding()
                
                .overlay(Image("DiLuuQuan Logo")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 200)
                )
                //.padding(.horizontal)
                
                //Product Image....
                Image(product.productImage)
                    .resizable()
                    //.frame(height: 155)
                    .aspectRatio(contentMode: .fit)
                    .matchedGeometryEffect(id: product.productImage, in: animation)
                    //.cornerRadius(3)
//                    .background(
//
//                        ZStack{
//                            Rectangle()
//                                .fill(product.productBG)
//                                .padding(-10)
//                            //White Inner Circle...
////                            Rectangle()
////                                .stroke(Color.white, lineWidth: 1.4)
////                                .padding(-5)
//
//                        }
//                            .opacity(0.5)
//                    )
                    .cornerRadius(10)
                    .rotationEffect(.init(degrees: 3))

                    //.frame(height: getScreenBounds().height / 3)
                    .padding(.top,50)
                
                //Product Details....
                VStack(alignment: .leading, spacing: 15){
                    
                    HStack{
                        
                        Text(product.productTitle)
                            .font(.title.bold())
                        
                        Spacer(minLength: 10)
                        
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        
                        Text("(\(product.productRating))")
                            .foregroundColor(.gray)
                    }
                }
                .padding(.top)
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                .background(
                    Color.gray
                        .opacity(0.2)
                        //.cornerRadius(20)
                        .ignoresSafeArea(.container, edges: .bottom)
                )
            }
            .padding()
            .padding(.vertical)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .background(.white)
            //.transition(.opacity)
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
