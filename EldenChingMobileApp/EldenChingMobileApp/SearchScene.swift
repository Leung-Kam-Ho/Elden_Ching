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
var SE50 = UIScreen.main.bounds.height*0.0749
var SE40 = UIScreen.main.bounds.height*0.05997
var SE60 = UIScreen.main.bounds.height*0.0899
var SE100 = UIScreen.main.bounds.height*0.1499
var SE170 = UIScreen.main.bounds.width*0.4533
var SE189 = UIScreen.main.bounds.height*0.2742
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
    @State var isEditing = false
    var body: some View {
        ZStack{
            ScrollView(.vertical, showsIndicators: false){
                LazyVGrid(columns: twoColumnGrid, alignment:.center, spacing : 20) {
                          // Display the item
                 
                    ForEach(category, id: \.self){ i in
      
                        if i.contains(search_text) || search_text == "" {
 
                            cardView(name: i)
                            
                            
                        }
                    }.animation(Animation.ripple(index: 3) , value: search_text).offset(y: 50)
                        
                    
                }
            }.offset(y:screen_height*0.15).offset(y:isEditing ? -SE50*1.5 : 0).animation(Animation.ripple(index: 2) , value:isEditing)
            RoundedRectangle(cornerRadius: 15)
                .fill(Color(#colorLiteral(red: 0.2, green: 0.2, blue:0.2, alpha: 1)))
                //.fill(Color.white)
                .frame(height:half_height).offset(y:-half_height*1.08).shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius: -4, x: 0, y: 4)
                .animation(Animation.ripple(index: 3) , value:isEditing)
                .offset(y: isEditing ? -SE50 : 0)
            
                ZStack {
    
                    //MetaChoice
                    Text("MetaChoice").font(.custom("Sen Regular", size: 35))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .foregroundColor(Color.black)
                        .frame(width: screen_width, height: SE40   )
                }.animation(Animation.ripple(index: 3) , value:isEditing)
                .offset(y:isEditing ? -SE50*2 : 0).offset(y:-screen_height*0.46)
                
                ZStack {
                    //Rectangle 4
                    RoundedRectangle(cornerRadius: 15)
                    .fill(Color(#colorLiteral(red: 0.9019607901573181, green: 0.9019607901573181, blue: 0.9019607901573181, alpha: 1)))
                    .frame(width: screen_width*0.9, height: SE60).shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius: -4, x: 0, y: 4)
                //🔎
                    HStack{
                        Text("🔎").font(.custom("Inter Medium", size: 15))
                        TextField("Search", text: $search_text, onEditingChanged:{begin in
                            if begin{
                                isEditing = true
                            }else{
                                isEditing = false
                            }
                            
                        } ).foregroundColor(Color.gray)
                    }.offset(x: SE50)
                    
                }.frame(height:SE82)
                    .animation(Animation.ripple(index: 3) , value:isEditing)
                    .offset(y:isEditing ? SE100 : 0).offset(y:-screen_height*0.38)
                
                
                
                
               
            
        }
            
            
        
        
       
        

       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


