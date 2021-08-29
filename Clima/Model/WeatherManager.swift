//
//  WheatherManager.swift
//  Clima
//
//  Created by Egor Mihalevich on 29.08.21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let wheatherURL = "https://api.openweathermap.org/data/2.5/weather?units=metric&appid=c5c7c7c2c3da5c690a214ce72b597254"

    func fetchWeather(cityName: String) {
        let urlString = "\(wheatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        // 1. Create a URL
        
        if let url = URL(string: urlString) {
            // 2. Create a URLSession
            
            let session = URLSession(configuration: .default)
            
            // 3. Give session a task
            
            let task = session.dataTask(with: url) { data, _, error in
                if error != nil {
                    print(error!)
                    return
                }
                
                if let safeData = data {
                    let dataString = String(data: safeData, encoding: .utf8)
                    print(dataString)
                }
            }
            
            // 4. Start the task
            task.resume()
        }
    }
    
    func parseJSON(w)
}
