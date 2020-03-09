//
//  AddBloodPressure.swift
//  HealthyMe
//
//  Created by Jeno on 08/03/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//

import SwiftUI
import RealmSwift

struct AddBloodPressureUI: View {
    
    @ObservedObject  var profiles = BindableResults(results: try! Realm().objects(ProfileModel.self))
   // @State var userList : Results<ProfileModel> = AppUtils.getAllserUser()
   
       

    @State var systolicFld : String = ""
    @State private var selectedDate = Date()
    @State var diastolicFld : String = ""
    @State var notesFld : String = ""
    @State private var selectedProfileIndex: Int = 0
    var body: some View {
        ZStack{
        Color(AppColors.appBackground).edgesIgnoringSafeArea(.all)
           
            NavigationView
                {
            Form{
               
                VStack(alignment: .center)
                        {
                  HStack(alignment: .center ,spacing: 10.0){
                Image("date").resizable().frame(width: 30, height: 30, alignment: .center)

                    Picker("Profile Name*", selection: $selectedProfileIndex) {
//                        ForEach(0..<userList.count) {
//
//
//                            Text(self.userList[$0].prof_name)
//
//
//                 }
                        ForEach(0..<profiles.results.count) {
                                          
                          
                            Text(self.profiles.results[$0].prof_name)
                               // Text(self.profiles.results[$0].prof_relationship)
                    }
                    
                    }.navigationBarTitle("Select profile",displayMode: .inline)
                 }
                }

                
                
                
                
                ImageTextfield(title: "mm Hg", imageTitle: "systolic_blood_pressure", labelTitle: "Systolic(High*)", textValue: $systolicFld, keybordType: .numberPad)
                
             ImageTextfield(title: "mm Hg", imageTitle: "diastolic_blood_pressure", labelTitle: "Diastolic (low)*", textValue: $diastolicFld, keybordType: .numberPad)
                
                VStack(alignment: .center)
                       {
                 HStack(alignment: .center ,spacing: 10.0){
               Image("date").resizable().frame(width: 30, height: 30, alignment: .center)
                    DatePicker(selection: $selectedDate, in: ...Date(), displayedComponents: .date) {
                    Text("Date*").font(.headline)

                }
                }
                }
                
            
                
                ImageTextfield(title: "notes", imageTitle: "notes", labelTitle: "Note", textValue: $notesFld, keybordType: .numberPad)
                
            
        }
            }
            
        }
    }
}


struct ImageTextfield : View {
    
    var title: String
    var imageTitle : String
    var labelTitle : String
    @Binding var textValue: String
    var keybordType: UIKeyboardType = .default
    var body: some View
    {
        VStack(alignment: .center)
        {
            HStack(alignment: .center ,spacing: 10.0){
        Image(imageTitle).resizable().frame(width: 30, height: 30, alignment: .center)
            VStack(alignment: .leading)
            {
                Text(labelTitle).font(.headline)
                VStack {
                    TextField(title, text: $textValue).keyboardType(keybordType).font(Font.system(size: 15.0))
                }.offset(y: -10)
                }
        }
    }
        
        
    }
}

struct ModalView: View {
    // 1.
    @Binding var showModal: Bool
    @Binding var selectedDate : Date
    var body: some View {
        VStack {
            
           DatePicker(selection: $selectedDate, in: ...Date(), displayedComponents: .date)
           {
            Text("")
            
            }
        
            Button("Dismiss") {
                self.showModal.toggle()
            }
        }
    }
}


struct AddBloodPressureUI_Previews: PreviewProvider {
    static var previews: some View {
        AddBloodPressureUI()
    }
}
