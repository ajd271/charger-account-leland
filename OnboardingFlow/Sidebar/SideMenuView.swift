//
//  SideMenuView.swift
//  Leland Charger
//
//  Created by Jonathan Duval on 8/28/24.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    @Binding var selectedTab: Int
    @State private var selectedOption: SideMenuOptionsModel?
    
    var body: some View {
        ZStack{
            if isShowing{
                Rectangle()
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture{isShowing.toggle()}
                HStack{
                    VStack(alignment: .leading, spacing:16) {
                        SideMenuHeaderView()
                        VStack{
                            ForEach(SideMenuOptionsModel.allCases){option in
                                Button(action: {
                                    onOptionTapped(option)
                                    }, label: {
                                    SideMenuRowView(option: option, selectedOption: $selectedOption)
                                    })
                                }
                                
                            }
                        
                        Spacer()
                    }
                    .padding()
                    .frame(width: 270, alignment: .leading)
                    .background(Gradient(colors: gradientColors))
                    
                    Spacer()
                }
                .transition(.move(edge: .leading))

            }
        }
        .animation(.easeInOut, value: isShowing)
    }
    
    private func onOptionTapped(_ option: SideMenuOptionsModel){
        selectedOption = option
        selectedTab = option.rawValue
        isShowing = false
    }
}


#Preview {
    SideMenuView(isShowing: .constant(true), selectedTab: .constant(0))
}
