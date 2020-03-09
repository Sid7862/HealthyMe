//
//  TestUIView.swift
//  HealthyMe
//
//  Created by Ahmed Sahib on 22/02/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//

import SwiftUI

struct TestUIView: View {
    @State var showMenu = true
    @State var mainuser : ProfileModel? = AppUtils.getMainUser()
    var body: some View {
       
         MainBaseView(content:
            
            ZStack
            {
                Color.white.edgesIgnoringSafeArea(.all)
            

                VStack{
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
                                        

                                 }.offset( y: 10.0)
                    
                    VStack{
                        Text(mainuser != nil ? "\(mainuser!.prof_name)" : "Welcome" ).font(Font.system(size: 15.0)).foregroundColor(.black).fontWeight(.bold)
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
                    }.offset( y: 50.0)

                                 Spacer()
        }

            }.offset(x: showMenu ? 0 : (UIScreen.main.bounds.width*3)/4)
            .rotation3DEffect(Angle(degrees: showMenu ? 0 : 90), axis: (x: 0, y: 0, z: 0))
            .animation(.easeOut(duration: 0.2))
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 5, x: 0, y: 0)
                          
                      
        
           )
    }
}

struct Dash: View {
    @State var showMenu = false
    var body: some View {
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
                            

                     }
            
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
}
}

struct TestUIView_Previews: PreviewProvider {
    static var previews: some View {
        TestUIView()
    }
}
