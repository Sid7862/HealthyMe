//
//  BaseSwiftUI.swift
//  HealthyMe
//
//  Created by Ahmed Sahib on 21/02/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//

import SwiftUI

struct BaseSwiftUI<Content>: View where Content: View {
    @State var showMenu = false
    let content: Content
    var body: some View {
        VStack{
            VStack
            {
                 HStack
                    {
                        Button(action: { withAnimation{self.showMenu.toggle()}})
                        {
                            Image("side_drawer").resizable().frame(width: 27.0, height: 27.0).padding(.leading, 5.0)

                        }
                        
                        Spacer()
                        
                        Button(action:
                        {
    
                        })
                        {
                            Image("sos").resizable().frame(width: 27.0, height: 27.0)

                        }
                        Button(action:
                        {
                           
                        })
                        {
                           Image("note").resizable().frame(width: 27.0, height: 27.0)

                        }
                        

                }//.padding()
                // .background(Color.white)
                //  Spacer()
        }
                VStack{
                  SideMenuUI()
                                                                     .background(Color.white)                           .offset(x: showMenu ? 0 : -UIScreen.main.bounds.width)
                                                                         .rotation3DEffect(Angle(degrees: showMenu ? 0 : 90), axis: (x: 0, y: 0, z: 0))
                                                                         .animation(.easeOut(duration: 0.2))
//                                                                       .padding(.top,0)
                                                                         .padding(.trailing,50)
                                                                         .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 30, x: 0, y: 20)
                                                                     
                
                
                
                  content
                .navigationBarHidden(true)
            }
        }
            
        }
}

