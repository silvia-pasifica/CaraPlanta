//
//  WelcomevView.swift
//  WeatherMenu
//
//  Created by Helen on 22/03/23.
//

import SwiftUI
import CoreLocationUI

struct WelcomevView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        VStack{
            VStack(spacing: 20){
                Text("Check the weather for today")
                    .bold()
                    .font(.title)
                Text("Please allow us to access your current location")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            //location button
            LocationButton(.shareCurrentLocation){
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomevView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomevView()
    }
}
