//
//  AddMedicine.swift
//  HealthyMe
//
//  Created by Jeno on 05/03/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//

import SwiftUI

struct AddMedicine: View {

    var value = days.createDays()
    
    var body: some View {
    
//        HStack(spacing: 20)
//        {
//            ForEach(value, id: \self)
//       { d
//        in
//        HStack()
//            {
//                Text(d).background(Color.red)
//                Text(d.va)
//
//        }
//        }
//        }
        VStack
        {
        Divider()
        HStack(spacing: 10)
        {
            ForEach(value, id: \.id)
            {
                result in
                
                VStack(alignment: .center, spacing: 5)
                {
                Text(result.number).font(.headline).fontWeight(.semibold)
                  Text(result.month).font(.subheadline)
                    Text(result.day).font(.headline).fontWeight(.black)
                    
                }.padding(5)
            }
            
            }
       Divider()
//        .overlay(
//            RoundedRectangle(cornerRadius: 10)
//                .stroke(Color.blue, lineWidth: 2))
         Spacer()
        }
       
     
}
}

struct AddMedicine_Previews: PreviewProvider {
    static var previews: some View {
        AddMedicine()
    }
}
