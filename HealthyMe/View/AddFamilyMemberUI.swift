//
//  AddFamilyMemberUI.swift
//  HealthyMe
//
//  Created by Ahmed Sahib on 22/02/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//

import SwiftUI

struct AddFamilyMemberUI: View {
    @State var nameFld : String = ""
    
    var body: some View {
        ZStack
            {
                Color("Greyis").edgesIgnoringSafeArea(.all)
                
        VStack(spacing:5){
           VStack
            {
         HStack
                {
                   
                    Image("name_register").resizable().frame(width: 30, height: 30, alignment: .leading)
                    Spacer()
                    TextField("Name*", text: $nameFld).frame(height: 50, alignment: .leading)                    }.background(Color.white)
           }.cornerRadius(5.0)
           VStack
              {
           HStack
                  {
                     
                      Image("name_register").resizable().frame(width: 30, height: 30, alignment: .leading)
                      Spacer()
                      TextField("Name*", text: $nameFld).frame(height: 50, alignment: .leading)                    }.background(Color.white)
             }.cornerRadius(5.0)
            VStack
               {
            HStack
                   {
                      
                       Image("name_register").resizable().frame(width: 30, height: 30, alignment: .leading)
                       Spacer()
                       TextField("Name*", text: $nameFld).frame(height: 50, alignment: .leading)                    }.background(Color.white)
              }.cornerRadius(5.0)
            VStack
               {
            HStack
                   {
                      
                       Image("name_register").resizable().frame(width: 30, height: 30, alignment: .leading)
                       Spacer()
                       TextField("Name*", text: $nameFld).frame(height: 50, alignment: .leading)                    }.background(Color.white)
              }.cornerRadius(5.0)
            VStack
               {
            HStack
                   {
                      
                       Image("name_register").resizable().frame(width: 30, height: 30, alignment: .leading)
                       Spacer()
                       TextField("Name*", text: $nameFld).frame(height: 50, alignment: .leading)                    }.background(Color.white)
              }.cornerRadius(5.0)
            Spacer()
        }.padding(10)

    }
    }
}

