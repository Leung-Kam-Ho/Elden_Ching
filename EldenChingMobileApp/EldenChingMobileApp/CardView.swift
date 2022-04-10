//
//  CardView.swift
//  EldenChingMobileApp
//
//  Created by Howard on 2/4/2022.
//

import Foundation
import SwiftUI
var themeblue = Color(#colorLiteral(red: 0.1109115705, green: 0.1259647608, blue: 0.2225787342, alpha: 1))
var themeblue2 = Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1))
var themeblue3 = Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1))
struct cardView : View{
    var name : String
    

    
    var body: some View{
        let id = (category.firstIndex(of: name) ?? 0)
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .fill(name != "x" ? ( id % 3 == 0 ? themeblue : (id%3 == 1) ? themeblue2 : themeblue3 ): Color.white)
                    //.fill(Color.white)
                .frame(width: SE170, height: SE189)
                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: name == "x" ? 0 : 0.25)), radius: name == "x" ? 0 : -4, x: 0, y: name == "x" ? 0 : 4)
                if (name != "x"){
                    VStack{
                        Text(id > 3 ?  label[0] : label[id+1] ).font(.system(size: 40)).padding()
                        Text(name)
                            .foregroundColor(Color(#colorLiteral(red: 0.9019607901573181, green: 0.9019607901573181, blue: 0.9019607901573181, alpha: 1)))
                    }
                    
                }

            }

    }

    
}

struct cardView_Preview: PreviewProvider {
    static var previews: some View {
        cardView(name : "手機")
            .previewInterfaceOrientation(.portrait)
    }
}

