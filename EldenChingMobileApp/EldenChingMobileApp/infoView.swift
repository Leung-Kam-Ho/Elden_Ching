//
//  infoView.swift
//  EldenChingMobileApp
//
//  Created by Howard on 5/4/2022.
//

import Foundation
import SwiftUI


struct infoView : View{
    var name : String
    @EnvironmentObject var setting:Settings
    @State var show = false
    @State var option = ""


    var body: some View{
        let db = category.firstIndex(of: name) ?? 0
            ZStack{
                Rectangle().fill(themeblue).ignoresSafeArea()
                Rectangle().fill(Color.white)
                if (!setting.finished){
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        Spacer()
                        
                        ForEach(DB[db], id: \.self){i in
                            let num = DB[db].firstIndex(of: i) ?? 0
                            
                                
                            
                            if (setting.price > Double(i[1]) ?? 20000.0){
                             
                                
                                NavigationLink(destination: detail(name: i[0]), label: {
     
                                    LargeCardView(name:i[0], minPrice: i[1], MaxPrice: i[2], id:num)

                                })
                                    
                                
                                
                            }
                            
                           
                        }.animation(Animation.ripple(index: 3) , value: setting.price)
                        
                    }

                }.offset(y:-30)
            }else if (setting.finished ){
                NavigationLink(destination: detail(name: "iPhone 13"), label: {

                    LargeCardView(name:"iPhone 13", minPrice: "6335", MaxPrice: "9299", id:1)

                }).offset(y: -20)
                
            }
            
                Spacer()
                
                

            }.navigationTitle(name)
            .navigationBarTitleDisplayMode(.inline)
            .overlay(QuestionView(), alignment: .bottom)
   
            

    }

    
}

struct detail : View{
    var name : String
    var body: some View{
        ZStack{
            Rectangle().fill(themeblue).ignoresSafeArea()
            Rectangle().fill(Color.white)
            VStack{
                Spacer()
                
                
                ScrollView(.vertical, showsIndicators: false){
                    VStack{
                        ZStack(alignment: .center){
                            RoundedRectangle(cornerRadius: 15)
                                .fill(themeblue)
                                .frame(width: screen_width*0.9, height: screen_height*0.3)
                                
                                Image(name.replacingOccurrences(of: " ", with: "_"))
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: screen_width*0.5)
                                
                                
                            
                            
                        }
                        Image("spec")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: screen_width*0.9)
                        Image("com")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: screen_width*0.9)
                        Text("Review").foregroundColor(themeblue)
                        Image("Yoho")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: screen_width*0.9)
                        Image("HKTV")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: screen_width*0.9)
                        Image("Amazon")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: screen_width*0.9)
                        
                        
                        
                    }
                    
                }.padding()
            }
            
                
            
        }
        
    }
}




