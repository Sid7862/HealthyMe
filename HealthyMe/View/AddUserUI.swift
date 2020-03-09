//
//  AddUserUI.swift
//  HealthyMe
//
//  Created by Jeno on 07/03/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//

import SwiftUI
import RealmSwift

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
        
        NavigationView
            {
        ZStack
            {
               // Color.gray.edgesIgnoringSafeArea(.top)
                Color(AppColors.appBackground).edgesIgnoringSafeArea(.all)
                
            VStack
                {
                    
                    
           Form
            {
           
           Section(header: Text("Personal")) {
            
            VStack(alignment: .leading)
                {
                Text("Name").font(.headline)
                 TextField("Enter Fullname", text: $name)
//                LabelTextField(label: "Name", placeHolder: "Enter Fullname", textValue: $name
//                    )
            }
              
               
            
            Picker("RelationShip", selection: $selectedRealationshipIndex)
            {
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
               
                ZStack
                    {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.white).shadow(color: .white, radius: 10, x: 1, y: 0).frame(width: UIScreen.main.bounds.width-80, height: 50, alignment: .center).offset(y: -8.0)
                Button(action: {
                    
                  print(Gender.genderID(valueString: Constants.genderOptions[self.selectedGenderIndex]))
                  print(BloodGroup.bloodGroupID(valueString: Constants.bloodGroup[self.selectedBloodGroupIndex]))
                    
                    
                 DispatchQueue.global(qos: .background).async
                        {
                        
                            
                        
                            
                            let realm = try! Realm();
                            
                            
                            let self_profile = "0";
                            
                            
                            
                            
                            if let profile = realm.objects(ProfileModel.self).filter("self_profile == '\(self_profile)'").first
                             
                            {
                                let profileModel = ProfileModel();
                                profileModel.prof_name = self.name
                                profileModel.self_profile = profile.prof_id
                                profileModel.prof_image = ""
                                profileModel.email = ""
                                profileModel.prof_relationship = Relationship.realationshipID(valueString: Constants.realationShip[self.selectedRealationshipIndex])
                                profileModel.prof_blood_grp = BloodGroup.bloodGroupID(valueString: Constants.bloodGroup[self.selectedBloodGroupIndex])
                                profileModel.prof_dob = self.birthday
                                profileModel.prof_gender = Gender.genderID(valueString: Constants.genderOptions[self.selectedGenderIndex])
                                do {
                                try realm.write {
                                                             
                                    realm.add(profileModel, update: .modified)
                                    
                                }
                                   }
                                catch let error as NSError
                                {
                                    print(error.description)
                                }

                            }
                            else
                            {
                                let profileModel = ProfileModel();
                                profileModel.prof_name = self.name
                                profileModel.self_profile = self_profile
                                profileModel.prof_image = ""
                                profileModel.email = ""
                                profileModel.prof_relationship = Relationship.realationshipID(valueString: Constants.realationShip[self.selectedRealationshipIndex])
                                profileModel.prof_blood_grp = BloodGroup.bloodGroupID(valueString: Constants.bloodGroup[self.selectedBloodGroupIndex])
                                
                                profileModel.prof_dob = self.birthday
                                profileModel.prof_gender = Gender.genderID(valueString: Constants.genderOptions[self.selectedGenderIndex])
                                do {
                                try realm.write {
                                                             
                                    realm.add(profileModel, update: .modified)
                                    
                                }
                                   }
                                catch let error as NSError
                                {
                                    print(error.description)
                                }
                            }
                            
                         

                            
                      
                            
                      
                           

                            
                       
                           
                    }
            
                   
                    
                })
                {
                    Text("Save").font(.headline).foregroundColor(Color("background"))
                }.frame(width: UIScreen.main.bounds.width-80, height: 50, alignment: .center).offset(y: -8.0)
                }
                }
        
        }
        .navigationBarTitle("Add Profile",displayMode: .inline)
                
        }
        
    }
}
//struct LabelTextField : View {
//    var label: String
//    var placeHolder: String
//    @Binding var textValue: String
//
//    var body: some View {
//
//        VStack(alignment: .leading) {
//            Text(label).font(.headline)
//            TextField(placeHolder,text: $textValue)
//                .padding()
//                .background(Color.init(red: 239.0, green: 243.0, blue: 244.0))
//                .cornerRadius(5.0)
//        }
//    }
//}


struct AddUserUI_Previews: PreviewProvider {
    static var previews: some View {
        AddUserUI()
    }
}
