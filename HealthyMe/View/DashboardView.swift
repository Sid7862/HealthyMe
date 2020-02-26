//
//  DashboardView.swift
//  HealthyMe
//
//  Created by Ahmed Sahib on 16/02/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//

import Foundation
import SwiftUI

struct DashboardView: View {
    @State var isNavigationBarHidden: Bool = false
    @State var showMenu = false

    var body: some View {
        NavigationView
            {
                    
                ZStack{
                    Color(.white)
                    .edgesIgnoringSafeArea(.all)
                                                            
                    SideMenuUI().offset(y: 0)
                                                      .background(Color.white)                           .offset(x: showMenu ? 0 : -UIScreen.main.bounds.width)
                                                          .rotation3DEffect(Angle(degrees: showMenu ? 0 : 90), axis: (x: 0, y: 0, z: 0))
                                                          .animation(.easeOut(duration: 0.2))
                                                        //.padding(.top,-40)
                                                          .padding(.trailing,50)
                                                          .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 30, x: 0, y: 20)
                                                      
            
                    VStack{
                        Text("abc").foregroundColor(.black)
                        HStack
                            {
                                VStack{
                                    Image("family_members").resizable().frame(width: 100, height: 100, alignment: .center)
                                    Text("family_members").foregroundColor(.black)
                                }
                                
                                Spacer()
                                
                                VStack{
                                Image("prescription").resizable().frame(width: 100, height: 100, alignment: .center)
                                Text("prescription").foregroundColor(.black)
                                }
                        }.padding([.leading,.trailing],40.0)
                        HStack
                            {
                                VStack{
                                    Image("doctors").resizable().frame(width: 100, height: 100, alignment: .center)
                                    Text("doctors").foregroundColor(.black)
                                }
                                 Spacer()
                                VStack{
                                Image("medicines").resizable().frame(width: 100, height: 100, alignment: .center)
                                Text("medicines").foregroundColor(.black)
                                }
                        }.padding([.leading,.trailing],40.0)
                        
                        Spacer()
                    }
                    Spacer()
                   

                    
                    
                }
                
               
                                   
                
                /*
                  .navigationBarItems(leading:

                       Image("side_drawer").resizable().frame(width: 27.0, height: 27.0)
                       ,
                      trailing:
                        HStack
                            {
                        Image("sos").resizable().frame(width: 27.0, height: 27.0)
                         Image("note").resizable().frame(width: 27.0, height: 27.0)
                        }


                   )
                .navigationBarTitle("") //this must be empty
                .navigationBarHidden(false)
                .navigationBarBackButtonHidden(true)
                */
               // .hideNavigationBar()
              //.background(Color.white)

                //.navigationBarTitle("") //this must be empty
                //.navigationBarHidden(false)
                /*
                .navigationBarItems(leading:

                    Image("side_drawer").resizable().frame(width: 27.0, height: 27.0)
                    ,
                   trailing:
                     HStack
                         {
                     Image("sos").resizable().frame(width: 27.0, height: 27.0)
                      Image("note").resizable().frame(width: 27.0, height: 27.0)
                     }


                )*/
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("",displayMode: .inline)
         .navigationBarItems(leading:

            Button(action: { withAnimation{self.showMenu.toggle()}})
            {
                Image("side_drawer").resizable().frame(width: 27.0, height: 27.0)
            }
            
             ,
            trailing:
              HStack
                  {
              Image("sos").resizable().frame(width: 27.0, height: 27.0)
               Image("note").resizable().frame(width: 27.0, height: 27.0)
              }


         )

        
        
//        .navigationBarHidden(false)
//        .navigationBarTitle("",displayMode: .inline)
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}

