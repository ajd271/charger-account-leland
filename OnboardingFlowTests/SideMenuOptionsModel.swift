//
//  SideMenuOptionModel.swift
//  OnboardingFlow
//
//  Created by Jonathan Duval on 8/31/24.
//

import Foundation
import SwiftUI


enum SideMenuOptionsModel: Int, CaseIterable {
    case y2025
    case february25
    case y2024
    case december24
    case november24
    case september24
    case may24
    case april24
    case february24
    case y2023
    case december23
    case november23
    case september23
    case y2022
    case december22
    case november22
    
    var title: String {
        switch self {
        case .y2025:
            return "2025"
        case .february25:
            return "February 2025"
        case .y2024:
            return "2024"
        case .december24:
            return "December 2024"
        case .november24:
            return "November 2024"
        case .september24:
            return "September 2024"
        case .may24:
            return "May 2024"
        case .april24:
            return "April 2024"
        case .february24:
            return "February 2024"
        case .y2023:
            return "2023"
        case .december23:
            return "December 2023"
        case .november23:
            return "November 2023"
        case .september23:
            return "September 2023"
        case .y2022:
            return "2022"
        case .december22:
            return "December 2022"
        case .november22:
            return "November 2022"
        }
    }
    
    var systemImageName: String {
        switch self {
        case .february25:
            return "doc"
        case .y2025:
            return "calendar"
        case .y2024:
            return "calendar"
        case .december24:
            return "doc"
        case .november24:
            return "doc"
        case .september24:
            return "doc"
        case .may24:
            return "doc"
        case .april24:
            return "doc"
        case .february24:
            return "doc"
        case .y2023:
            return "calendar"
        case .december23:
            return "doc"
        case .november23:
            return "doc"
        case .september23:
            return "doc"
        case .y2022:
            return "calendar"
        case .december22:
            return "doc"
        case .november22:
            return "doc"
        }
    }
}

extension SideMenuOptionsModel: Identifiable, Hashable {
    var id: Int { return self.rawValue }
}
