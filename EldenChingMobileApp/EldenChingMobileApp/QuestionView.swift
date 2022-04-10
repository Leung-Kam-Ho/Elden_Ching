//
//  QuestionView.swift
//  EldenChingMobileApp
//
//  Created by Howard on 5/4/2022.
//

import Foundation
import SwiftUI
private var twoColumnGrid = [GridItem(.flexible()), GridItem(.flexible())]
var Q_list = ["Budget", "OS","Aspect Ratio","Job Related","Camera", "Monitor Size", "Material"]
let loop_animation = Animation.Qripple(index: 0).repeatForever(autoreverses: true)
struct QuestionView : View{
    @State var show = false
    @EnvironmentObject var setting :Settings
    @State var isEditing = false
    @State var move = false
    @State var Q_show = false
    @State var question = ""
 
    
    var body : some View{
        VStack{
            Button(action:{
                withAnimation(Animation.ripple(index: 3)){
                    if Q_show{
                        Q_show.toggle()
                    }else{
                        show.toggle()
                    }
                    
                }
                
            }){
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .fill(show ? (Q_show ? themeblue2 : themeblue3) : themeblue)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius: -4, x: 0, y:  4)
                    Text(Q_show ? " Back" : "We have some questions for you").foregroundColor(Color.white)
                    
                }.frame(width: screen_width*0.9, height: SE50)
            }.offset(y: show ? 10 : -20)
            
            if (show){
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.white.opacity(0.7))
                        .shadow(color: Color.black, radius: 15, x: 0, y: 4)
                        .scaleEffect(0.98)
                    if !Q_show{
                        ScrollView(.vertical){
                            LazyVGrid(columns: twoColumnGrid, alignment:.center, spacing : 10){
                                ForEach(Q_list, id:\.self){ name in
                                    Button(action:{
                                        withAnimation(Animation.ripple(index: 3)){
                                            question = String(name)
                                            Q_show.toggle()
                                            
                                        }
                                        
                                    }){
                                        Q_Card(name: String(name)).padding()
                                    }
                                    
                                }
                            }
                        }
                    }else{
          
                            if question == "Budget"{
                                VStack{
                                    Text("What's Your Budget?")
                                        .foregroundColor(Color.black)
                                        .font(.system(size: 30))
                                    
                                    ZStack{
                                        Circle()
                                            .fill(themeblue)
                                            
                                        Circle()
                                            .fill(Color.white)
                                            .scaleEffect(move ? 0.8 : 0.95)
                                            .animation(loop_animation, value: move)
                                        Text("$")
                                            .font(.system(size: 200))
                                            .foregroundColor(themeblue2)
                                    }.padding()
                                        .onAppear(){
                                            move.toggle()
                                        }
                       
                                        
                                    
                                    Slider(value: $setting.price,
                                                    in: 500...20000,
                                                    step: 100,
                                                    onEditingChanged: { began in
                                                            print("began? \(began)")
                                                           
                                                            print(setting.price)
                                                        },
                                                        label: { Text("Budget").foregroundColor(Color.black) })
                                    Text("\(Int(setting.price))")
                                        .foregroundColor(Color.black)
                                        .font(.system(size: 30))
                                }.padding(.all, 50)
                            }else if(question == "Aspect Ratio"){
                                VStack{
                                    Text("Preferred Ratio?")
                                        .foregroundColor(Color.black)
                                        .font(.system(size: 30))
                                    
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 15)
                                            .fill(themeblue)
                                   
                                            
                                            
                                        RoundedRectangle(cornerRadius: 15)
                                            .fill(Color.white)
                                            .scaleEffect(0.95)
                                            
                                            
                                 
                                    }.padding()
                                        .aspectRatio( move ? 0.5 : 0.5625, contentMode: .fit)
                                        .animation(loop_animation, value: move)
                                        .onAppear(){
                                            move.toggle()
                                        }
                       
                                        
                                    HStack{
                                        Button(action:{
                                            setting.ratio = "2:1"
                                        }){
                                            ZStack{
                                                RoundedRectangle(cornerRadius: 15)
                                                    .fill(setting.ratio == "2:1" ? themeblue : Color.black.opacity(0.5))
                                                    .aspectRatio(2, contentMode: .fit)
                                                Text("2:1").foregroundColor(Color.white)
                                            }
                                        }
                                        Button(action:{
                                            setting.ratio = "16:9"
                                        }){
                                            ZStack{
                                                RoundedRectangle(cornerRadius: 15)
                                                    .fill(setting.ratio == "16:9" ? themeblue2 : Color.black.opacity(0.5))
                                                    .aspectRatio(2, contentMode: .fit)
                                                Text("16:9").foregroundColor(Color.white)
                                            }
                                        }
                                        
                                        
                                        
                        
                                    }
                          
                                }.padding(.all, 50)
                            }
                        

                        
                    }
                    
                }
                
                    
                
            }
            
            
            
            
            
        }
        

       
    }
}

struct Q_Card : View{
   
    var Q_label = ["😀","😃","😄","😁","😆","🥹","😅","😂","🤣","🥲"]
    var name : String
    var body: some View{
        let id = (Q_list.firstIndex(of: name) ?? 0)

            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .fill(name != "x" ? ( id % 3 == 0 ? themeblue : (id%3 == 1) ? themeblue2 : themeblue3 ): Color.white)
                    //.fill(Color.white)
                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: name == "x" ? 0 : 0.25)), radius: name == "x" ? 0 : -4, x: 0, y: name == "x" ? 0 : 4)
          
                    VStack{
                        Text(Q_label[id] ).font(.system(size: 40)).padding()
                        Text(name)
                            .foregroundColor(Color(#colorLiteral(red: 0.9019607901573181, green: 0.9019607901573181, blue: 0.9019607901573181, alpha: 1)))
                    }.padding()
                    
                

            }
        
            
    }
}

class Settings: ObservableObject {
    @Published var price:Double = 20000
    @Published var ratio:String = ""
}

struct Q_Preview: PreviewProvider {
    static var previews: some View {
        QuestionView()
            .previewInterfaceOrientation(.portrait)
    }
}
