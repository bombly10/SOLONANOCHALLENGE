//
//  MainView.swift
//  SosFanta
//
//  Created by felice di palma on 11/12/21.
//

import SwiftUI

struct MainView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
        }
    @State private var defaultPage = 0
    var body: some View {
        TabView(selection: $defaultPage){
           NewsView()
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("News")
                }
                .tag(0)
            
            TipsView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
                .tag(1)
            Text("TEAMS")
                .tabItem {
                    Image(systemName: "sportscourt")
                    Text("Teams")
                }
                .tag(2)
           
         CategoriesView()
                .tabItem {
                    Image(systemName: "doc.text.magnifyingglass")
                    Text("Categories")
                }
                .tag(3)
            
           
            
        }.accentColor(Color(UIColor(named: "Principal")!))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
