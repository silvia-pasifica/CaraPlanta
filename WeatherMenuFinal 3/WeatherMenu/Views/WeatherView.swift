//
//  WeatherView.swift
//  WeatherMenu
//
//  Created by Helen on 24/03/23.
//

import SwiftUI

struct WeatherView: View {
    var weather: ResponseBody

    var body: some View {
        ZStack(alignment: .leading){
            VStack{
                VStack(alignment: .leading, spacing: 5){
                    Text(weather.name)
                        .bold()
                        .font(.title)
                    
                    Text("Today, \(Date().formatted(.dateTime.month().day().hour().minute()))")
                        .fontWeight(.light)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                
                
                VStack{
                    HStack{
                        VStack(spacing: 20){
                            //ganti krn image static
                            Image(systemName:"cloud.drizzle")
                                .font(.system(size: 40))
                            
                            Text(weather.weather[0].main)
                                .font(.title2)
                               
                        }
                        .frame(width: 150, alignment: .leading)
                        
                        Spacer()
                        
                        Text(weather.main.feelslike.roundDouble() + "º")
                            .font(.system(size: 100))
                            .fontWeight(.bold)
                            .padding()
                        
                    }
                    
                    Spacer()
                        .frame(height: 0)
                    
                    Image("plant")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.top,-20)
                        .frame(width: 335.0)
                        
                    
                placeholder:do {
                    ProgressView()
                }
                   
                    Spacer()
                    
                }
                .frame(maxWidth: .infinity)
            }
            
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack{
                Spacer()
                
                VStack(alignment: .leading, spacing: 20)
                {
                    Text("Current weather data")
                        .bold().padding(.bottom)
                    HStack{
                        WeatherRow(logo:"thermometer.low", name: "Min temp",value: (weather.main.tempMin.roundDouble()+"º"))
                        Spacer()
                        
                        WeatherRow(logo:"thermometer.high", name: "Max temp",value: (weather.main.tempmax.roundDouble()+"º"))
                            .padding(.leading,-132)
                    }
                    HStack{
                        WeatherRow(logo:"wind", name: "Wind Speed",value: (weather.wind.speed.roundDouble()+"m/s"))
                        Spacer()
                        
                        WeatherRow(logo:"humidity", name: "Humidity",value: (weather.main.humidity.roundDouble()+"%"))
                    
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .padding(.bottom, 20)
//                .foregroundColor(Color(hue: 0.615, saturation: 0.668, brightness: 0.59))
                .foregroundColor(Color(red: 0.372, green: 0.437, blue: 0.318))
           
//                .background(.white)
                .background(Color(hue: 0.615, saturation: 0.039, brightness: 0.966))
                .cornerRadius(_radius: 20, corners: [.topLeft,.topRight])
            }
            
        }
        .edgesIgnoringSafeArea(.bottom)
//        .preferredColorScheme(.dark)
//        .background(Color(hue: 0.615, saturation: 0.668, brightness: 0.59))
        .preferredColorScheme(.light)
        .background(Color(hue: 0.55, saturation: 0.372, brightness: 0.818))
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
