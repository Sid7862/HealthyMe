//
//  MainBaseView.swift
//  HealthyMe
//
//  Created by Ahmed Sahib on 22/02/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//

import SwiftUI

struct MainBaseView<Content>: View where Content: View {
    let content: Content
    var body: some View {
       
            ZStack
                {
                    Color.white.edgesIgnoringSafeArea(.all)
                    SideMenuUI().frame(width: (UIScreen.main.bounds.width*3)/4).offset(x: -55)
                    content
            }.padding(.top,5)
        
             
    }
}

//struct MainBaseView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainBaseView()
//    }
//}
