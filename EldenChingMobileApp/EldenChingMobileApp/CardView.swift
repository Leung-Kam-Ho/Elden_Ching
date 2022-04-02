//
//  CardView.swift
//  EldenChingMobileApp
//
//  Created by Howard on 2/4/2022.
//

import Foundation
import SwiftUI

struct cardView : View{
    var name : String

    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 15)
                .fill(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
            .frame(width: SE170, height: SE189).shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius: 4, x: 0, y: 4)
            Text(name).foregroundColor(Color(#colorLiteral(red: 0.9019607901573181, green: 0.9019607901573181, blue: 0.9019607901573181, alpha: 1)))
        }
       
    }
    //Rectangle 5
    
}
