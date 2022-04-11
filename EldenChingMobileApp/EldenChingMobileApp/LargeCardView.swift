//
//  LargeCardView.swift
//  EldenChingMobileApp
//
//  Created by Howard on 5/4/2022.
//

import Foundation
import SwiftUI


struct LargeCardView : View{
    var name : String
    var minPrice : String
    var MaxPrice : String
    var id : Int
    @EnvironmentObject var setting: Settings
    
    var body : some View{
        
        VStack{
            Text(name).font(.largeTitle).foregroundColor(Color.black)
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .fill((id % 3 == 0 ? themeblue : (id%3 == 1) ? themeblue2 : themeblue3))
                    .frame(width: screen_width*0.85, height: screen_height*0.6)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: name == "x" ? 0 : 0.25)), radius:  -4, x: 0, y:  4)
                    
               
                VStack(spacing: 20){
                    Image("\(name.replacingOccurrences(of: " ", with: "_"))").resizable().aspectRatio(contentMode: .fit).frame(width: screen_width*0.6,height: screen_height*0.3)
                    
                    if (setting.finished){
                        VStack(alignment: .leading){
                            Text("Why:").foregroundColor(Color.white)
                            Text("- iOS").foregroundColor(Color.white)
                            Text("- Nice Camera").foregroundColor(Color.white)
                            Text("- Suitable Battery Size").foregroundColor(Color.white)

                        }
                    }
                        
                    
                    
                    Text("$ \(minPrice)-\(MaxPrice)").foregroundColor(Color.white)
                }.padding()
               
                
            }
        }
        
       
    }
}
