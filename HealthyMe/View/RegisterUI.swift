//
//  RegisterUI.swift
//  HealthyMe
//
//  Created by Jeno on 23/02/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//
/*
import SwiftUI

struct RegisterUI: View {
    @State private var name: String = ""
    @State private var age: String = ""

    @State private var selectedGenderIndex: Int = 0
       
       private var genderOptions = ["🙍‍♂️ Male", "🙍‍♀️ Female", "🤖 Other"]
       @State private var birthday = Date()

    
    var body: some View {
        NavigationView {
            ZStack
                {
                    Color("background")
                    .edgesIgnoringSafeArea(.all)
                    
            VStack {
                
                Image("intro_logo").resizable().frame(width: 150, height: 150)
//                .offset(y: -80)
//                .padding(.bottom, -60)
                
                Form {
                
                Section(header: Text("Personal")) {
                    TextField("Full name", text: $name)
                    TextField("Your age", text: $age).keyboardType(.numberPad)
                }
                Picker("Gender", selection: $selectedGenderIndex) {
                    ForEach(0..<genderOptions.count) {
                        Text(self.genderOptions[$0])
                    }
                }
                
                DatePicker(selection: $birthday, in: ...Date(), displayedComponents: .date) {
                Text("Birthday")
                }
                }
                
                
                
                
            }
                    
        
                    
                    
                  
                    
        }.navigationBarHidden(true).navigationBarTitle("",displayMode: .inline)
        }
        
    }
}

struct RegisterUI_Previews: PreviewProvider {
    static var previews: some View {
        RegisterUI()
    }
}
*/


import SwiftUI


struct RegisterUI: View {
    @State private var name: String = ""
    @State private var age: String = ""

    @State private var selectedGenderIndex: Int = 0
       
     private var genderOptions = ["🙍‍♂️ Male", "🙍‍♀️ Female", "🤖 Other"]
    


       @State private var birthday = Date()

    
    var body: some View {
        NavigationView {
            ZStack
            {
                Color("background")
                .edgesIgnoringSafeArea(.all)
            VStack
                {
                    VStack
                    {
                   ZStack
                    {
                        Color("background")
                        .edgesIgnoringSafeArea(.all)
                    Image("intro_logo").resizable().frame(width: 150, height: 150)
                   }.frame(width: UIScreen.main.bounds.width, height: 200)
                    
   
                Form {
                
                Section(header: Text("Personal")) {
                    TextField("Full name", text: $name)
                    TextField("Your age", text: $age).keyboardType(.numberPad)
                }
                Picker("Gender", selection: $selectedGenderIndex) {
                    ForEach(0..<genderOptions.count) {
                        Text(self.genderOptions[$0])
                    }
                }
                
                DatePicker(selection: $birthday, in: ...Date(), displayedComponents: .date) {
                Text("Birthday")
                }
                        }
                }
                
                VStack
                    {
                        HStack()
                    {
                        Spacer()
                        Button(action:
                        {
                           
                            })
                        {
                            Text("Skip").font(.subheadline).foregroundColor(.white).fontWeight(.bold)

                        }.frame(width: 60, height: 60).background(Color("background")).cornerRadius(30)
                        
                    }
                }.offset(x:-10 ,y: -90).padding(.bottom,-50)
            }
        }.navigationBarHidden(true).navigationBarTitle("",displayMode: .inline)
        }
        
    }
}

struct RegisterUI_Previews: PreviewProvider {
    static var previews: some View {
        RegisterUI()
    }
}

