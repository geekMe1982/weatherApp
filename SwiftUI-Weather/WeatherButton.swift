//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Adam Khalifa on 17.04.2024.
//

import SwiftUI

struct WeatherButton: View {
    var title: String
    var backgroungColor: Color
    var foregroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280.0, height: 50.0)
            .background(backgroungColor)
            .foregroundColor(foregroundColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
