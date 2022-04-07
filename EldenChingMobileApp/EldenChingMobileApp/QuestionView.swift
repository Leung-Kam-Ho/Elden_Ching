//
//  QuestionView.swift
//  EldenChingMobileApp
//
//  Created by Howard on 5/4/2022.
//

import Foundation
import SwiftUI

struct QuestionView : View{
    @State var show = false
    @EnvironmentObject var setting :Settings
    @State var slider:Double = 20000
    @State var isEditing = false
    @State var move = false
    private let animation = Animation.Qripple(index: 4).repeatForever(autoreverses: true)
    var body : some View{
        VStack{
            Button(action:{
                withAnimation(Animation.ripple(index: 3)){
                    show.toggle()
                }
                
            }){
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .fill(show ? themeblue3 : themeblue)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius: -4, x: 0, y:  4)
                    Text("We have some questions for you").foregroundColor(Color.white)
                    
                }.frame(width: screen_width*0.9, height: SE50)
            }
            ZStack{
                RoundedRectangle(cornerRadius: 15).frame(width: screen_width*0.9, height: screen_height*0.5).shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.45)), radius: -4, x: 0, y:4)
                VStack{
                    ZStack{
                        Circle().foregroundColor(themeblue3)
                        Circle().scaleEffect(0.95)
                        Text("$").font(.system(size: 150))
                            .foregroundColor(themeblue)
                            .rotationEffect(Angle.degrees(move ? 15 : -15))
                            .animation(animation, value: move)
                            .onAppear(){
                                move.toggle()
                        }
                        
                    }
                    .padding()
                    Text("What's Your Budget?").foregroundColor(Color.black)
                    VStack{
                        

                        Slider(value: $slider,
                                       in: 500...20000,
                                       step: 100,
                                       onEditingChanged: { began in
                            print("began? \(began)")
                            setting.price = slider
                            print(setting.price)
                        },
                                       label: { Text("Budget").foregroundColor(Color.black) })
                        Text("\(Int(slider))").foregroundColor(Color.black)
                            
                    }.padding()
                        
    
                    
                }.frame(width: screen_width*0.9, height: screen_height*0.5)
            }
            
            
            
            
        }.offset(y: show ? -20 : screen_height*0.5)
        

       
    }
}

class Settings: ObservableObject {
    @Published var price:Double = 20000
}
