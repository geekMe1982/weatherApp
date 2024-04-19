//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Adam Khalifa on 16.04.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack {
            CityTextView(text: "Cupertino, CA")
                MainDayWeatherView(imageName: isNight ? "moon.fill" :  "cloud.sun.fill", temperature: 76)
                HStack(spacing: 20) {
                    WeatherDayView(weekDay: "TUE",
                                   temperature: 74,
                                   imageName: "sun.haze.fill")
                    WeatherDayView(weekDay: "WED",
                                   temperature: 50,
                                   imageName: "cloud.hail.fill")
                    WeatherDayView(weekDay: "THU",
                                   temperature: 77,
                                   imageName: "sun.rain.fill")
                    WeatherDayView(weekDay: "FRI",
                                   temperature: 30,
                                   imageName: "wind.snow")
                }
                Spacer()
                Button {
                    
                }label: {
                    WeatherButton(title: "Change Day Time", backgroungColor: .white, foregroundColor: .blue)
                        .shadow(radius: 5, x:3 , y: 3)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var weekDay: String
    var temperature: Int
    var imageName: String
    
    var body: some View {
 
        VStack {
            Text(weekDay)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
   
    var isNight: Bool
    
    var body: some View {
        ContainerRelativeShape()
            .fill( isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
}

struct CityTextView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .padding()
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundStyle(.white)
    }
}

struct MainDayWeatherView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .symbolRenderingMode(.palette)
                .resizable()
                .foregroundStyle(.white, .orange)
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)°")
                .font(.system(size: 76,weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}
