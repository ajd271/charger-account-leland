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
                    february25()
                        .background(Gradient(colors: gradientColors))
                        .foregroundStyle(.white)
                        .padding()
                        .tag(0)
                        .tag(1)
                    december24()
                        .background(Gradient(colors: gradientColors))
                        .foregroundStyle(.white)
                        .padding()
                        .tag(2)
                        .tag(3)
                    november24()
                        .background(Gradient(colors: gradientColors))
                        .foregroundStyle(.white)
                        .padding()
                        .tag(4)
                    september24()
                        .background(Gradient(colors: gradientColors))
                        .foregroundStyle(.white)
                        .padding()
                        .tag(5)
                    may24()
                        .background(Gradient(colors: gradientColors))
                        .foregroundStyle(.white)
                        .padding()
                        .tag(6)
                    april24()
                        .background(Gradient(colors: gradientColors))
                        .foregroundStyle(.white)
                        .padding()
                        .tag(7)
                    february24()
                        .background(Gradient(colors: gradientColors))
                        .foregroundStyle(.white)
                        .padding()
                        .tag(8)
                    december23()
                        .background(Gradient(colors: gradientColors))
                        .foregroundStyle(.white)
                        .padding()
                        .tag(9)
                        .tag(10)
                    november23()
                        .background(Gradient(colors: gradientColors))
                        .foregroundStyle(.white)
                        .padding()
                        .tag(11)
                    september23()
                        .background(Gradient(colors: gradientColors))
                        .foregroundStyle(.white)
                        .padding()
                        .tag(12)
                    december22()
                        .background(Gradient(colors: gradientColors))
                        .foregroundStyle(.white)
                        .padding()                        
                        .tag(13)
                        .tag(14)
                    november22()
                        .background(Gradient(colors: gradientColors))
                        .foregroundStyle(.white)
                        .padding()
                        .tag(15)
                }
                .tabViewStyle(.page)

                SideMenuView(isShowing: $showMenu, selectedTab: $selectedTab)

            }
            //.navigationDestination(for: SideMenuOptionsModel.self, destination: { option in
                //navigationDestination(for: option)
            //})
            .onAppear { showMenu = false }
            .navigationTitle(showMenu ? "" : "Charger Account")
            .navigationBarTitleDisplayMode(.inline)
         //   .toolbar(showMenu ? .hidden : .visible, for: .navigationBar)
            .toolbar(.visible, for: .navigationBar)
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
