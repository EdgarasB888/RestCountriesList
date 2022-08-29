//
//  NetworkManager.swift
//  RestCountriesList
//
//  Created by iMac on 2022-08-22.
//

import Foundation

class NetworkManager
{
    static func fetchData(completion: @escaping ([Country]) -> () )
    {
        guard let url = URL(string: "https://restcountries.com/v3.1/all") else {return}
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let config = URLSessionConfiguration.default
        config.waitsForConnectivity = true
        
        URLSession(configuration: config).dataTask(with: request) { (data, response, error) in
            guard error == nil else
            {
                print(error!)
                return
            }
            
            guard let data = data else
            {
                fatalError()
                //return
            }
            
            do
            {
                let jsonData = try JSONDecoder().decode([Country].self, from: data)
                print("jsonData::", jsonData)
                completion(jsonData)
            }
            catch
            {
                print("Errr:::", error)
            }
            
        }.resume()
    }
    
}
