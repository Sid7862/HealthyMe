//
//  MainView.swift
//  HealthyMe
//
//  Created by Jeno on 08/03/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//

import SwiftUI

struct MainView: View {
    
   @State var selectedView = 0
    
    var body: some View {
       
        ZStack
            {
               
                
                TabView(selection: $selectedView)
                {
                    
                    TestUIView()
                    .tabItem {
                        Image(systemName: "1.circle")
                        Text("Dashboard")
                    }.tag(0)
                    
                           AddUserUI()
                               .tabItem {
                                   Image(systemName: "1.circle")
                                   Text("First")
                               }.tag(1)
                           AddBloodPressureUI()
                               .tabItem {
                                   Image(systemName: "2.circle")
                                   Text("Second")
                               }.tag(2)
                       }
                   }
                
                
                
            
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
