//
//  NetworkHelper.swift
//  TableView
//
//  Created by Tommy-amarbank on 13/08/22.
//

import Foundation
struct BaseModel: Decodable {
    var data: [BaseDataModel]?
}

struct BaseDataModel: Decodable {
    var id_field: Int?
    var field: String?
    var email: String?
    
}

enum HttpMethod: String {
    case get = "GET"
    case post = "POST"
}

class NetworkHelper {
    weak var dataTask: URLSessionDataTask?
    
    func call(urls:String,httpMethod: HttpMethod, responseData: @escaping (_ data: BaseModel?)->Void){
        let url = URL(string: urls)
        guard let url = url else {
            return
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = httpMethod.rawValue
        if httpMethod == .post {
            let body = [
                "token":"0b4fa7ed1ccb4cd7693c47fb874757e3c4aa2025ea2de34922612e97bc00"
            ]
            urlRequest.httpBody = try! JSONEncoder().encode(body)
        }
        dataTask =  URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            if let response = response as? HTTPURLResponse {
                print(response.statusCode)
                guard let data = data else {
                    return
                }
                var decodeData: BaseModel?
                do {
                    decodeData = try JSONDecoder().decode(BaseModel.self, from: data)
                }catch {
                    
                }
                
                DispatchQueue.main.async {
                    responseData(decodeData)
                }
            }
        }
        dataTask?.resume()
    }
    
    deinit {
        print(String(describing: self))
    }
}
