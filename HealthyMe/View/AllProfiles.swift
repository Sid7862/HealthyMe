//
//  AllProfiles.swift
//  HealthyMe
//
//  Created by Jeno on 08/03/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//

import SwiftUI
import RealmSwift

extension Color {
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
}

struct AllProfiles: View {
    
   //@EnvironmentObject var profileData: ProfileData
    @ObservedObject var profiles = BindableResults(results: try! Realm().objects(ProfileModel.self))
     @State var addUser = false
    
    var body: some View {
        
//        List(_profileData.projectedValue, id: \ProfileModel.prof_id)
//        {
//            profile in
//
//        }
        //Text("abc")
        
//        List(profiles.results.identified(by: \.prof_id)) { profile in
//
//               }
        NavigationView{
    
            VStack
            {
                
        List()
        {
            ForEach(profiles.results, id: \ ProfileModel.prof_id)
            {
                profile in

//                ZStack
//                    {
//                        Text(
//                        "abc")
//                }
//                .padding([.leading,.trailing,.bottom])
//                .overlay(
//                    RoundedRectangle(cornerRadius: 16)
//                        .stroke(Color.blue, lineWidth: 4))
//                VStack(alignment: .leading)
//                    {
//
//                        VStack(alignment: .leading){
//                    Text(profile.prof_name).foregroundColor(Color(AppColors.HeaderTitle)).font(Font.system(size: 16.0))
//                        Text(Relationship.realationshipStringFromID(valueString: profile.prof_relationship)).foregroundColor(Color(AppColors.subHeaderTitle)).font(Font.system(size: 13.0))
//                        Divider()
//                        }.padding(5.0).background(Color.black).cornerRadius(4.0)
//                }
             
                ZStack{
                  //  Color.gray//.edgesIgnoringSafeArea(.all)
                    VStack(alignment:.center){
                        
                       
                        HStack(alignment:.top){
                            VStack(alignment: .leading) {
                            Text(profile.prof_name).foregroundColor(Color(AppColors.HeaderTitle)).font(Font.system(size: 16.0)).fontWeight(.bold)
                               Text(Relationship.realationshipStringFromID(valueString: profile.prof_relationship)).foregroundColor(Color(AppColors.subHeaderTitle)).font(Font.system(size: 13.0))
                                                   //    Divider()
                            }
                            
                            Spacer()
                          
                            Image("edit_profile").resizable().frame(width: 20, height: 20)
                        }
                       // }
                    }.padding().background(Color.white)
                        .cornerRadius(8.0).shadow(radius: 10.0)
                }

            }
            .navigationBarTitle("Family Members",displayMode: .inline)

        }.onAppear { UITableView.appearance().separatorStyle = .none
            UITableViewCell.appearance().backgroundColor = .clear}
            .onDisappear { UITableView.appearance().separatorStyle = .singleLine }
            
            NavigationLink(destination: AddUserUI(),isActive: $addUser)
            {
            Button(action: {
                
                self.addUser = true
            }
            )
            {
           // ZStack{
                
                
                VStack()
                    {
                        
                       
                        HStack(alignment:.center,spacing: 20.0){
                            
                         
                          
                            Image("add_family_member").resizable().frame(width: 50, height: 50).offset(x: 10)
                            
                           
                            
                            VStack(alignment: .leading) {
                            Text("Add Family Member").foregroundColor(Color(AppColors.HeaderTitle)).font(Font.system(size: 16.0)).fontWeight(.bold)
                          Text("(\(5)left)").foregroundColor(Color(AppColors.subHeaderTitle)).font(Font.system(size: 13.0))
                                                   //    Divider()
                            }
                            Spacer()
                            
                        }
                        Spacer()
                       // }
                }.frame(width: UIScreen.main.bounds.width-40.0, height: 60.0).background(Color.white)
                    .cornerRadius(8.0).shadow(radius: 10.0).offset(y: -15.0)
               // }
                
            }
                }
           
            
        }

        }
      
            
    
//        ZStack
//        {
//        List()
//        {
//            ForEach(profileData.profiles, id: \ ProfileModel.prof_id)
//            {
//                profile in
//
//                VStack
//                    {
//
//                        Text(profile.prof_name)
//                        Text(profile.prof_relationship)
//                }
//
//            }
//            }
//
//        }
    }
}
//struct familyRowUI : View {
//
//    let data : ProfileModel
//    var body: some View {
//
//        ZStack{
//            Color.gray.edgesIgnoringSafeArea(.all)
//            VStack(alignment:.leading){
//
//
//                HStack{
//                    VStack(alignment: .leading) {
//                        Text("ahmed")
//                        Text("self")
//                    }
//
//                    Spacer()
//
//                    Image("edit_profile").resizable().frame(width: 20, height: 20)
//                }
//               // }
//            }.padding(10.0).frame(width: UIScreen.main.bounds.width-20.0).background(Color.white)
//                .cornerRadius(8.0)
//        }
//    }
//
//}

struct AllProfiles_Previews: PreviewProvider {
    static var previews: some View {
        AllProfiles()
       // familyRowUI(data: profiles)
    }
}
