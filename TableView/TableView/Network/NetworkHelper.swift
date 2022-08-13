//
//  NetworkHelper.swift
//  TableView
//
//  Created by Tommy-amarbank on 13/08/22.
//

import Foundation
struct FieldModel: Decodable {
    var data: [FieldDataModel]?
}

struct FieldDataModel: Decodable {
    var id_field: Int?
    var field: String?
}

struct NetworkHelper {
    static func call(responseData: @escaping (_ data: FieldModel?)->Void){
        let url = URL(string: "https://dev-ruangkonstruksi-backend.herokuapp.com/field")
        guard let url = url else {
            return
        }
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            if let response = response as? HTTPURLResponse {
                print(response.statusCode)
                guard let data = data else {
                    return
                }
                var decodeData: FieldModel?
                do {
                    decodeData = try JSONDecoder().decode(FieldModel.self, from: data)
                }catch {
                    
                }
                
                DispatchQueue.main.async {
                    responseData(decodeData)
                }
            }
        }.resume()
    }
}
