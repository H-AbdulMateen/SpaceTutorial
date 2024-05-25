//
//  RocketLaunchRow.swift
//  iosApp
//
//  Created by Abdul Mateen on 25/05/2024.
//  Copyright © 2024 orgName. All rights reserved.
//

import SwiftUI
import shared

struct RocketLaunchRow: View {
    var rocketLaunch: RocketLaunch
    
    var body: some View {
        HStack(){
            VStack(alignment: .leading, spacing: 10.0){
                Text("\(rocketLaunch.missionName) - \(String(rocketLaunch.launchYear))").font(.system(size: 30)).bold()
                Text(launchText).foregroundColor(launchColor)
                Text("\(rocketLaunch.details ?? "")")
            }
        }
    }
}

extension RocketLaunchRow {
    private var launchText: String{
        if let isSuccess = rocketLaunch.launchSuccess {
            return isSuccess.boolValue ? "Successful" : "Unsuccessful"
        } else {
            return "No data"
        }
    }
    
    private var launchColor: Color {
        if let isSuccess = rocketLaunch.launchSuccess{
            return isSuccess.boolValue ? Color.green : Color.red
        } else {
            return Color.gray
        }
    }
}

//#Preview {
//    RocketLaunchRow()
//}
