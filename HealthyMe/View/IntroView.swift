//
//  ContentView.swift
//  HealthyMe
//
//  Created by Ahmed Sahib on 16/02/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//

import SwiftUI

struct IntroView: View {
    @State var loginSelection = false
    @State var createNewAccountSelection = false
    @State var skipSelection = false
    @State var hideNavigation = true
    
    var body: some View {
        NavigationView
            {
        ZStack
            {
                Color("background")
                    .edgesIgnoringSafeArea(.all)
                
                VStack
                    {
                        VStack(spacing:20.0){ Image("intro_logo").resizable().frame(width: 150, height: 150)
                            Text("HealthyMe").font(Font.system(size: 25.0)).foregroundColor(Color.white)
                        }.padding([.bottom,.top])
                        VStack(alignment: .leading)
                        {
                            
                            HStack
                                {
                                    Image("bullet_guest").resizable().frame(width: 28.0, height: 28.0)
                                    Text("Never skip your medicine with our alerts").font(Font.system(size: 15.0)).foregroundColor(Color.white)
                            }
                            HStack
                                {
                                    Image("bullet_guest").resizable().frame(width: 28.0, height: 28.0)
                                    Text("Reach out to your emergency contact").font(Font.system(size: 15.0)).foregroundColor(Color.white)
                            }
                            HStack
                                {
                                    Image("bullet_guest").resizable().frame(width: 28.0, height: 28.0)
                                    Text("Upload Prescription, add doctor, track health record").font(Font.system(size: 15.0)).foregroundColor(Color.white)
                            }
                        }.padding(.bottom, 30.0)
                        //Spacer()
                        
                        ZStack{
                            
                            
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.white).shadow(color: .white, radius: 10, x: 1, y: 0).frame(width: UIScreen.main.bounds.width-80, height: 50, alignment: .center)
                            NavigationLink(destination: RegisterUI(),isActive: $loginSelection)
                            {
                                Button(action: {
                                    print("hello")
                                    
                                    self.loginSelection = true
                                    
                                })
                                {
                                    Text("Create Account").font(.headline).foregroundColor(Color("background"))
                                }.frame(width: UIScreen.main.bounds.width-80, height: 50, alignment: .center)
                            }
                        }
                        
                         NavigationLink(destination: TestUIView(),isActive: $skipSelection)
                         {
                        Button(action: {
                            self.skipSelection = true
                        })
                        {
                            Text("Skip").font(.system(size: 18.0, weight: .bold)).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width-80, height: 50, alignment: .center)
                }
                        Spacer()
                        ZStack(alignment: .bottom) {
                            Button(action: {
                                print("hello")
                            })
                            {
                                Text("App Tour").font(.headline).foregroundColor(.white)
                            }.frame(width: UIScreen.main.bounds.width-80, height: 50)
                        }.offset(y:-40)
                        
                        
                        
                }
                
                
                
                
                
                
        }.background(Color("background"))
            .edgesIgnoringSafeArea(.bottom)
                //.hideNavigationBar()
                .navigationBarTitle("") //this must be empty
                .navigationBarHidden(hideNavigation)
                .onDisappear()
            {
                self.hideNavigation = true
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
