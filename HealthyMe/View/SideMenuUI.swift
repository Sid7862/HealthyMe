//
//  SideMenuUI.swift
//  HealthyMe
//
//  Created by Ahmed Sahib on 21/02/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//

import SwiftUI

struct Menu: Identifiable {
    let id: Int
    let menuText: String
    let menuImage: String
    
}

struct SideMenuUI: View {
    let menuData : [Menu] = [
                   .init(id: 0, menuText: "Dashboard", menuImage:"side_menu_1"),
                   .init(id: 1, menuText: "TimeTable", menuImage:"side_menu_2"),
                   .init(id: 2, menuText: "Profile", menuImage:"side_menu_3"),
                   .init(id: 3, menuText: "Calendar", menuImage:"side_menu_4"),
                   .init(id: 4, menuText: "Calendar", menuImage:"side_menu_5"),
                   .init(id: 5, menuText: "Calendar", menuImage:"side_menu_6"),
                   .init(id: 6, menuText: "Calendar", menuImage:"side_menu_7"),
                   .init(id: 7, menuText: "Calendar", menuImage:"side_menu_8"),
                   .init(id: 8, menuText: "Calendar", menuImage:"side_menu_9"),
                   .init(id: 9, menuText: "Calendar", menuImage:"side_menu_10"),
                   .init(id: 10, menuText: "Calendar", menuImage:"side_menu_11"),
                   .init(id: 11, menuText: "Calendar", menuImage:"side_menu_12"),
                   .init(id: 12, menuText: "Calendar", menuImage:"side_menu_13"),
                   .init(id: 13, menuText: "Calendar", menuImage:"side_menu_14"),
        .init(id: 14, menuText: "Calendar", menuImage:"side_menu_14"),
        .init(id: 15, menuText: "Calendar", menuImage:"side_menu_14"),
        .init(id: 16, menuText: "Calendar", menuImage:"side_menu_14"),
        .init(id: 17, menuText: "Calendar", menuImage:"side_menu_14")







               ]
        
       
           
           
            var body: some View
            {
                
                List
                    {
                        ForEach(menuData,id: \Menu.id)
                        {
                        menu in
                        HStack
                        {
                            Image("\(menu.menuImage)").resizable().frame(width: 30, height: 30, alignment: .leading)
                            Text(menu.menuText).font(.title).frame(alignment: .leading)
                        }
                    }
                    
                }
                
               
    }
        

    
}

//struct SideMenuUI_Previews: PreviewProvider {
//    static var previews: some View {
//        SideMenuUI()
//    }
//}
