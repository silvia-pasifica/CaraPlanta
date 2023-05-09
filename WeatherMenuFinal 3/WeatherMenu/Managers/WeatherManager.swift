//
//  WeatherManager.swift
//  WeatherMenu
//
//  Created by Helen on 23/03/23.
//

import Foundation
import CoreLocation
import SwiftUI

//API KEY FROM OPENWEATHERMAP.ORG : 5003fd0779579bd8864bade84990816b
class WeatherManager{
    func getCurrentWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws -> ResponseBody {
//        guard let url = URL(string: "https://api.tomorrow.io/v4/timelines?location=\(latitude),\(longitude)&fields=temperature&fields=weatherCode&timesteps=1h&units=metric&apikey=n0neJe6TBkrH6kcvh1cy962Ww5fiPBXb")
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&appid=f608bcf25edb35dee35b486ede46e05b&units=metric")
        else{
            fatalError("Missing URL")
        }
        
        let urlRequest = URLRequest(url: url)
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
//        print("data >>>>>>> \(data)")
//        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
//            fatalError("Error fetching weather data")
//        }
//
        let decodedData = try JSONDecoder().decode(ResponseBody.self, from: data)
        
        return decodedData
    }
}

struct ResponseBody: Decodable{
    var coord: CoordinatesResponse
    var weather: [WeatherResponse]
    var main: MainResponse
    var name: String
    var wind: WindResponse
    
    struct CoordinatesResponse: Decodable{
        var lon: Double
        var lat: Double
    }
    
    struct WeatherResponse: Decodable {
        var id : Double
        var main: String
        var description: String
        var icon: String
     
}
    
    struct MainResponse: Decodable{
        var temp: Double
        var feels_like: Double
        var temp_min: Double
        var temp_max: Double
        var pressure: Double
        var humidity: Double
    }

    struct WindResponse: Decodable{
        var speed: Double
        var deg: Double
    }

}
 
 extension ResponseBody.MainResponse {
     var feelslike: Double {return feels_like}
     var tempMin: Double {return temp_min}
     var tempmax: Double {return temp_max}
 }
 


/*
 struct WeatherModel: Codable {
    let data: WeatherData
}

struct WeatherData: Codable {
    let timelines: [WeatherTimelines]
}

struct WeatherTimelines: Codable {
    let intervals: [WeatherIntervals]
}

struct WeatherIntervals: Codable {
    let startTime: String
    let values: WeatherValue
}

struct WeatherValue: Codable {
    var temperature: Double
    var weatherCode: Int
}

struct Weather: Identifiable {
    let id = UUID()
    
    let temperature: Int
    let weatherCode: WeatherCode
}

enum WeatherCode: String, Codable {
    case clear = "1000"
    case mostlyClear = "1100"
    case partlyCloudy = "1101"
    case mostlyCloudy = "1102"
    case cloudy = "1001"
    case fog = "2000"
    case lightFog = "2100"
    case lightWind = "3000"
    case wind = "3001"
    case strongWind = "3002"
    case drizzle = "4000"
    case rain = "4001"
    case lightRain = "4200"
    case heavyRain = "4201"
    case snow = "5000"
    case flurries = "5001"
    case lightSnow = "5100"
    case heavySnow = "5101"
    case freezingDrizzle = "6000"
    case freezingRain = "6001"
    case lightFreezingRain = "6200"
    case heavyFreezingRain = "6201"
    case icePellets = "7000"
    case heavyIcePellets = "7101"
    case lightIcePellets = "7102"
    case thunderstorm = "8000"
    
    var description: String {
        switch self {
        case .clear:
            return "It's very sunny!\n Don't forget your hat!"
        case .cloudy, .mostlyCloudy:
            return "Cloudy today!\n Watch out for some rain"
        case .mostlyClear, .partlyCloudy:
            return "Enjoy your day!"
        case .fog, .lightFog:
            return "Drive safe and make sure to turn on your low-beam headlights!"
        case .lightWind:
            return "Enjoy some light breeze today!"
        case .wind, .strongWind:
            return "Very windy today!"
        case .drizzle, .lightRain:
            return "A bit of rain,\n don't forget your umbrella!"
        case .rain, .heavyRain:
            return "Rainy today,\n don't forget your umbrella!"
        case .snow, .flurries, .lightSnow, .heavySnow:
            return "What a beautiful day!\n Don't forget your mittens!"
        case .freezingDrizzle:
            return "So cold brrr! Keep warm!"
        case .freezingRain, .lightFreezingRain, .heavyFreezingRain:
            return "Drive safe, the roads might be slippery!"
        case .icePellets:
            return "Ice Pellets"
        case .heavyIcePellets:
            return "Take cover!\n Heavy hail alert!"
        case .lightIcePellets:
            return "Light Ice Pellets"
        case .thunderstorm:
            return "Try to stay inside!\n Thunderstorm alert!"
        }
    }
    
    var image: Image {
        switch self {
        case .clear:
            return Image(systemName: "sun.max.fill")
        case .cloudy:
            return Image(systemName: "cloud.fill")
        case .mostlyClear, .partlyCloudy, .mostlyCloudy:
            return Image(systemName: "cloud.sun.fill")
        case .fog, .lightFog:
            return Image(systemName: "cloud.fog.fill")
        case .lightWind, .wind:
            return Image(systemName: "wind")
        case .strongWind:
            return Image(systemName: "tornado")
        case .drizzle:
            return Image(systemName: "cloud.drizzle.fill")
        case .lightRain, .rain:
            return Image(systemName: "cloud.rain.fill")
        case .heavyRain:
            return Image(systemName: "cloud.heavyrain.fill")
        case .snow, .flurries, .lightSnow, .heavySnow:
            return Image(systemName: "snow")
        case .freezingDrizzle:
            return Image(systemName: "thermometer.snowflake")
        case .freezingRain, .lightFreezingRain, .heavyFreezingRain:
            return Image(systemName: "cloud.rain.fill")
        case .icePellets, .heavyIcePellets, .lightIcePellets:
            return Image(systemName: "cloud.hail.fill")
        case .thunderstorm:
            return Image(systemName: "cloud.bolt.fill")
        }
    }
}

*/

