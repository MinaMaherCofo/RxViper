//
//  APIClient.swift
//  RxViper
//
//  Created by Mina on 3/14/20.
//  Copyright © 2020 Mina. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class InvalidURLError: Error {
    var localizedDescription: String {
        return "Invalid URL!"
    }
}

class ParsingError: Error {
    var localizedDescription: String {
        return "The Response Data is invalid".localized
    }
}

class APIClient {
    func request (baseUrl: String = Constants.baseUrl, path: String) -> Observable<Data>{
        return Observable<Data>.create { (observer) -> Disposable in
            guard var url = URL(string: baseUrl) else {
                observer.onError(InvalidURLError())
                return Disposables.create()
            }
            
            url.appendPathComponent(path)
            
            let request = URLRequest(url: url)
            let configurations = URLSessionConfiguration.default
            
            let sessionObservable = URLSession(configuration: configurations).rx.data(request: request)
                .observeOn(ConcurrentDispatchQueueScheduler(qos: .background))
                .subscribeOn(MainScheduler.instance)
                .subscribe(onNext: { (data) in
                    observer.onNext(data)
                }, onError: { (error) in
                    observer.onError(error)
                })
            
            return Disposables.create(with: sessionObservable.dispose)
        }
    }
    
    func requestDecodable<DecodableObject: Decodable> (baseUrl: String = Constants.baseUrl, path: String) -> Observable<DecodableObject> {
        return request(baseUrl: baseUrl, path: path).asObservable().map {
            return try JSONDecoder().decode(DecodableObject.self, from: $0)            
        }
    }
}
