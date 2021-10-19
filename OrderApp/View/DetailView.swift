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
                
                //Product Image....
                ZStack(alignment: .top){
                    Image(product.productImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        //.frame(height: 300)
//                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                        .edgesIgnoringSafeArea(.top)
                        .matchedGeometryEffect(id: product.productImage, in: animation)
                    
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
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)

                
                //                VStack(alignment: .leading){
                VStack(alignment: .leading, spacing: 10){
                    
                    Text(product.productTitle)
                        .font(.title.bold())
                        .frame(maxWidth: .infinity, alignment: .leading)
                    //                        .padding(.horizontal)
                    
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
                    //.foregroundColor(.gray)
                    
                    Text("\(product.description)")
                        .lineLimit(5)
                    //.multilineTextAlignment(.)
                        .foregroundColor(.gray.opacity(0.9))
                    //.font(.system(size: 15, weight: ., design: <#T##Font.Design#>))
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                .background(
                    Color.white
                        .cornerRadius(30)
                        .ignoresSafeArea(.container, edges: .bottom)
                )
                
                HStack{
                    Button(action: {}, label: {
                        Text("View Cart")
                            .fontWeight(.bold)
                            .padding(5)
                            .padding(.horizontal)
                            .background(.white, in: RoundedRectangle(cornerRadius: 12))
                    })
                    
                    Spacer(minLength: 10)
                    
                    Button(action: {}, label: {
                        Text("Add to Cart")
                            .fontWeight(.bold)
                            .padding(5)
                            .padding(.horizontal)
                            .background(.white, in: RoundedRectangle(cornerRadius: 12))
                    })
                }
                .padding()
                .background(.purple)
                
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
