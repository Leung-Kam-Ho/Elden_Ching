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
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        Spacer()
                        ForEach(DB[db], id: \.self){i in
                            let num = DB[db].firstIndex(of: i) ?? 0
                            if (setting.price > Double(i[1]) ?? 20000.0){
                             
                                NavigationLink(destination: detail(), label: {
     
                                    LargeCardView(name:i[0], minPrice: i[1], MaxPrice: i[2], id:num)

                                })
                                    
                                
                                
                            }
                            
                           
                        }.animation(Animation.ripple(index: 3) , value: setting.price)
                        Spacer()
                    }

                }.offset(y:-30)
                
                
                

            }.navigationTitle(name)
            .navigationBarTitleDisplayMode(.inline)
            .overlay(QuestionView(), alignment: .bottom)
   
            

    }

    
}

struct detail : View{
    var body: some View{
        ZStack{
            Rectangle().fill(themeblue).ignoresSafeArea()
            Rectangle().fill(Color.white)
        }
        
    }
}




