//
//  Welcome.swift
//  WeatherApp(Test)
//
//  Created by macbook on 24.04.2024.
//

import SwiftUI
import CoreLocationUI

struct Welcome: View {
    
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Text("Welcome to the\nWeather App")
                    .font(.title)
                    .bold()
                
                Text("Please share your current location to get the weather in your area")
                    
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            
            .cornerRadius(30)
            .foregroundStyle(Color.white)
        }
    }
}

#Preview {
    ContentView()
}
