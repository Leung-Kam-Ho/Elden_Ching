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
    
    var body : some View{
        
        VStack{
            Text(name).font(.largeTitle).foregroundColor(Color.black)
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .fill((id % 3 == 0 ? themeblue : (id%3 == 1) ? themeblue2 : themeblue3))
                    .frame(width: screen_width*0.85, height: screen_height*0.6)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: name == "x" ? 0 : 0.25)), radius:  -4, x: 0, y:  4)
                    
                
                VStack{
                    Image("\(name.replacingOccurrences(of: " ", with: "_"))").resizable().aspectRatio(contentMode: .fit).frame(width: screen_width*0.5, height: screen_height*0.5)
                    Text("$ \(minPrice)-\(MaxPrice)")
                }
               
                
            }
        }
        
       
    }
}
