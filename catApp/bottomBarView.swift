//
//  bottomBarView.swift
//  catApp
//
//  Created by Triet Tran on 2/25/24.
//

import Foundation
import SwiftUI

struct BottomNavigationView: View {
    @State private var selectedTab: Int = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            // Cat Icon
            Text("Cat")
                .tabItem {
                    Image(systemName: "cat")
                    Text("Cat")
                }
                .tag(0)

            // Calendar Icon
            Text("Calendar")
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Calendar")
                }
                .tag(1)

            // Plus Sign Icon
            Text("Add")
                .tabItem {
                    Image(systemName: "plus.circle.fill")
                    Text("Add")
                }
                .tag(2)

            // Two Persons Icon
            Text("People")
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("People")
                }
                .tag(3)

            // Gear Icon
            Text("Settings")
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
                .tag(4)
        }
        //.accentColor(Color("31BFAF")) // Set your custom accent color
    }
}




struct BottomNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavigationView()
    }
}

