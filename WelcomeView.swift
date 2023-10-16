//
//  D WeatherManager.swift
//  WeatherApp
//
//  Created by Divyanshu raj om 2023-09-15.
//


import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager

    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Text(" Welcome to the Weather App😃 ")
                    .bold()
                    .font(.title)
                
                Text("Click here to get the Current Weather in your area")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()

            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(40)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
