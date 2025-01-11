//
//  ContentView.swift
//  SideMenuTemplate
//
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    @State private var selectedTab = 0
   @State private var selectedMenuOption: SideMenuOptionsModel?
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                //TabbedView()
                TabView(selection: $selectedTab)
                {
                    may24()
                        .background(Gradient(colors: gradientColors))
                        .tabViewStyle(.page)
                        .foregroundStyle(.white)
                        .padding()
                        .tag(0)
                    april24()
                        .background(Gradient(colors: gradientColors))
                        .tabViewStyle(.page)
                        .foregroundStyle(.white)
                        .padding()
                        .tag(1)
                    
                }
                
                SideMenuView(isShowing: $showMenu, selectedTab: $selectedTab)
            }
            .navigationDestination(for: SideMenuOptionsModel.self, destination: { option in
                //navigationDestination(for: option)
            })
            .onAppear { showMenu = false }
            .navigationTitle("Charger Account")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(showMenu ? .hidden : .visible, for: .navigationBar)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        showMenu.toggle()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundStyle(.blue)
                    }
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
