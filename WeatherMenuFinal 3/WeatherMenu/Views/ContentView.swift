//
//  ContentView.swift
//  WeatherMenu
//
//  Created by Helen on 22/03/23.
//

import SwiftUI

struct ContentView: View {
    //stateobject property wrapper so that view can be notified everytime that the published variable in LocationManager is updated
    @StateObject var locationManager = LocationManager()
    var weatherManager = WeatherManager()
    @State var weather: ResponseBody?
    
    var body: some View {
        VStack {
            
            if let location = locationManager.location {
                if let weather = weather{
                    WeatherView(weather:weather)
                } else {
                    LoadingView()
                        .task {
                            do{ weather =
                                try await weatherManager.getCurrentWeather(latitude: location.latitude, longitude: location.longitude)
                            } catch {
                                print("Error getting weather \(error)")
                            }
                        }
                }
            } else {
                if locationManager.isLoading {
                    LoadingView()
                } else {
                    WelcomevView()
                        .environmentObject(locationManager)
                }
            }
        }
//        .preferredColorScheme(.dark)
//        .background(Color(hue: 0.615, saturation: 0.668, brightness: 0.59))
        .preferredColorScheme(.light)
        .background(Color(hue: 0.0, saturation: 0.0, brightness: 96.9))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
