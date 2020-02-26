//
//  Extention.swift
//  HealthyMe
//
//  Created by Ahmed Sahib on 16/02/20.
//  Copyright © 2020 Ahmed Sahib. All rights reserved.
//

import Foundation
import SwiftUI

extension View
{
    func hideNavigationBarHide() -> some
    View
    {
        self.navigationBarTitle("",displayMode: .inline).navigationBarHidden(true)
    }
}

public struct NavigationBarHider: ViewModifier {
    @State var isHidden: Bool = false

    public func body(content: Content) -> some View {
        content
            .navigationBarTitle("",displayMode: .inline)
            .navigationBarHidden(isHidden)
            .onAppear { self.isHidden = true }
           // .onDisappear{self.isHidden = false}
    }
}
//public struct NavigationBarUnHider: ViewModifier {
//    @State var isHidden: Bool = true
//
//    public func body(content: Content) -> some View {
//        content
//            .navigationBarTitle("")
//            .navigationBarHidden(isHidden)
//            .onAppear { self.isHidden = false }
//    }
//}

extension View {
    public func hideNavigationBar() -> some View {
        modifier(NavigationBarHider())
    }
}
