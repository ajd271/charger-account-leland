//
//  SideMenuRowView.swift
//  OnboardingFlow
//
//  Created by Jonathan Duval on 8/31/24.
//

import SwiftUI

struct SideMenuRowView: View {
    let option: SideMenuOptionsModel
   // @Binding var isShowing: Bool
    @Binding var selectedOption: SideMenuOptionsModel?

    private var isSelected: Bool{
        return selectedOption == option
    }
    var body: some View {
        HStack{
            Image(systemName: option.systemImageName)
                .imageScale(.small)
            
            Text(option.title)
                .font(.subheadline)
            
            Spacer()
        }
        
        .padding(.leading)
        .foregroundStyle(isSelected ? .white : .primary)
        .frame(width: 216, height: 30)
        .background(isSelected ? .white.opacity(0.15) : .clear )
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    SideMenuRowView(option: .may24, selectedOption: .constant(.may24))
}
