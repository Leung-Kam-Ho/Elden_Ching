//
//  ContentView.swift
//  EldenChingMobileApp
//
//  Created by Howard on 25/3/2022.
//

import SwiftUI

var screen_width = UIScreen.main.bounds.width
var screen_height = UIScreen.main.bounds.height
var half_width = UIScreen.main.bounds.width/2
var SE20 =  UIScreen.main.bounds.height*0.0299
var SE82 = UIScreen.main.bounds.height*0.1229
var SE70 = UIScreen.main.bounds.height*0.1049
var SEscroll = UIScreen.main.bounds.height*0.772
var half_height = UIScreen.main.bounds.height/2

private var category = ["電腦","手機","影音","電視","IDK","1","2","3","4","5","6","7"]
private var twoColumnGrid = [GridItem(.flexible()), GridItem(.flexible())]

extension Animation {
    static func ripple(index: Int) -> Animation {
        Animation.spring(dampingFraction: 0.5)
            .speed(2)
            .delay(0.03 * Double(index))
    }
}
struct ContentView: View {
    @State var search_text = ""
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 15).fill(Color(#colorLiteral(red: 0.2, green: 0.2, blue:0.2, alpha: 1))).frame(height:half_height*0.70).offset(y:-half_height*0.92).shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5)), radius: 4, x: 0, y: 4)
            VStack{
                
                ZStack {
                //Rectangle 1
                    Rectangle()
                        .fill(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
                    .frame(width: 375, height: 40).offset(y:-SE20)
    
                    
                    //MetaChoice
                    Text("MetaChoice").font(.custom("Sen Regular", size: 35)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                }
                
                ZStack {
                    //Rectangle 4
                    RoundedRectangle(cornerRadius: 15)
                    .fill(Color(#colorLiteral(red: 0.9019607901573181, green: 0.9019607901573181, blue: 0.9019607901573181, alpha: 1)))
                    .frame(width: screen_width*0.9, height: 60).shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius: 4, x: 0, y: 4)
                //🔎
                    HStack{
                        Text("🔎").font(.custom("Inter Medium", size: 15))
                        TextField("Search", text: $search_text).foregroundColor(Color.gray)
                    }.offset(x: 50)
                    
                }.frame(height:SE82)
                
                
                
                
                ScrollView(.vertical, showsIndicators: false){
                    LazyVGrid(columns: twoColumnGrid, alignment:.center, spacing : 20) {
                              // Display the item
                     
                        ForEach(category, id: \.self){ i in
          
                            if i.contains(search_text) || search_text == "" {
     
                                cardView(name: i)
                                
                                
                            }
                        }.animation(Animation.ripple(index: 3) , value: search_text)
                            
                        
                    }
                }
            }
        }
            
            
        
        
       
        

       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct cardView : View{
    var name : String

    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 15)
                .fill(Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))
            .frame(width: 170, height: 182.9).shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius: 4, x: 0, y: 4)
            Text(name).foregroundColor(Color(#colorLiteral(red: 0.9019607901573181, green: 0.9019607901573181, blue: 0.9019607901573181, alpha: 1)))
        }
       
    }
    //Rectangle 5
    
}
