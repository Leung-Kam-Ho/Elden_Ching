//
//  CardView.swift
//  EldenChingMobileApp
//
//  Created by Howard on 2/4/2022.
//

import Foundation
import SwiftUI
var themeblue = Color(#colorLiteral(red: 0.1098039216, green: 0.1254901961, blue: 0.2235294118, alpha: 1))
struct cardView : View{
    var name : String

    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 15)
                .fill(themeblue)
                //.fill(Color.white)
            .frame(width: SE170, height: SE189).shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius: -4, x: 0, y: 4)
            Text(name)
                .foregroundColor(Color(#colorLiteral(red: 0.9019607901573181, green: 0.9019607901573181, blue: 0.9019607901573181, alpha: 1)))
            //.foregroundColor(Color.black)
        }
       
    }
    //Rectangle 5
    
}
