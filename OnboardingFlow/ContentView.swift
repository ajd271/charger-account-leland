//
//  ContentView.swift
//  SideMenuTemplate
//
//

import SwiftUI

let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom
]


struct ContentView: View {
    @State private var showMenu = false
    @State private var selectedTab = 1
   @State private var selectedMenuOption: SideMenuOptionsModel?
    
    var body: some View {
        NavigationStack {
            ZStack {
                TabView(selection: $selectedTab)
                {
                    may24()
                        .background(Gradient(colors: gradientColors))
                        .foregroundStyle(.white)
                        .padding()
                        .tag(1)
                        .tag(0)
                    april24()
                        .background(Gradient(colors: gradientColors))
                        .foregroundStyle(.white)
                        .padding()
                        .tag(2)
                    february24()
                        .background(Gradient(colors: gradientColors))
                        .foregroundStyle(.white)
                        .padding()
                        .tag(3)
                    december23()
                        .background(Gradient(colors: gradientColors))
                        .foregroundStyle(.white)
                        .padding()
                        .tag(5)
                        .tag(4)
                    november23()
                        .background(Gradient(colors: gradientColors))
                        .foregroundStyle(.white)
                        .padding()
                        .tag(6)
                    september23()
                        .background(Gradient(colors: gradientColors))
                        .foregroundStyle(.white)
                        .padding()
                        .tag(7)
                    december22()
                        .background(Gradient(colors: gradientColors))
                        .foregroundStyle(.white)
                        .padding()
                        .tag(9)
                        .tag(8)
                    november22()
                        .background(Gradient(colors: gradientColors))
                        .foregroundStyle(.white)
                        .padding()
                        .tag(10)
                }
                .tabViewStyle(.page)

                SideMenuView(isShowing: $showMenu, selectedTab: $selectedTab)

            }
            //.navigationDestination(for: SideMenuOptionsModel.self, destination: { option in
                //navigationDestination(for: option)
            //})
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
