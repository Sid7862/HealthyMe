//
//  AddUserUI.swift
//  HealthyMe
//
//  Created by Jeno on 07/03/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//

import SwiftUI

struct AddUserUI: View {
    
       @State private var name: String = ""
       @State private var age: String = ""

    @State private var selectedGenderIndex: Int = 0
     @State private var selectedRealationshipIndex: Int = 0
     @State private var selectedBloodGroupIndex: Int = 0
          
       //  var genderOptions = ["🙍‍♂️ Male", "🙍‍♀️ Female", "🤖 Other"]
        // private var RealationShip = ["Self","Father","Mother", "Sibling", "Grand Parent"]
       //  private var RealationShip = ["Self","Father","Mother", "Sibling", "Grand Parent"]

       @State private var birthday = Date()

    var body: some View {
        
        ZStack
            {
                Color.gray.edgesIgnoringSafeArea(.top)
                
             
           Form{
           
           Section(header: Text("Personal")) {
               TextField("Full name", text: $name)
            //TextField("Your age", text: $age).keyboardType(.numberPad)
            
            Picker("RelationShip", selection: $selectedRealationshipIndex) {
               ForEach(0..<Constants.realationShip.count)
               {
                                             Text(Constants.realationShip[$0])
                                         }
                                     }
            
            Picker("Gender", selection: $selectedGenderIndex) {
                       ForEach(0..<Constants.genderOptions.count) {
                              Text(Constants.genderOptions[$0])
                          }
                      }
                      
            DatePicker(selection: $birthday, in: ...Date(), displayedComponents: .date) {
                          Text("Birthday")
                      }
            
            Picker("Blood Group", selection: $selectedBloodGroupIndex) {
                                            ForEach(0..<Constants.bloodGroup.count) {
                                                   Text(Constants.bloodGroup[$0])
                                               }
                                           }
                          
                         
                              }
            
           
                   
                   
            
            
            
           }
                
                Button(action: {
                    
                })
                {
                    Text("Save").font(.headline).foregroundColor(Color("background"))
                }.frame(width: UIScreen.main.bounds.width-80, height: 50, alignment: .center)
          
        
        }
        
    }
}

struct AddUserUI_Previews: PreviewProvider {
    static var previews: some View {
        AddUserUI()
    }
}
