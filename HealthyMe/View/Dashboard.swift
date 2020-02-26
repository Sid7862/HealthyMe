//
//  Dashboard.swift
//  HealthyMe
//
//  Created by Ahmed Sahib on 21/02/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//

import SwiftUI

struct Dashboard: View {
    var body: some View {
      
        BaseSwiftUI(content:
        
            ZStack()
                {
                    Color(.white)
                    .edgesIgnoringSafeArea(.all)
                    Text("sbc")
            }.padding()
        ).background(Color.white)
    }
    
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
