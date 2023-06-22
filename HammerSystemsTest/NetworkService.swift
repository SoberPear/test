//
//  NetworkService.swift
//  HammerSystemsTest
//
//  Created by Алексей Волобуев on 11.05.2023.
//

import Foundation

protocol NetworkOutputDelegate {
    func getData()
}

class NetworkService {
    
    var mainInteractorInput: MainInteractorInput?
    let session = URLSession.shared
    let decoder = JSONDecoder()
    var dataSource = [Episode]()
    
    private func getEpisodes(links: [String], completionHandler: (()->())? ) {
        let dispatchGroup = DispatchGroup()
        for link in links {
            dispatchGroup.enter()
            guard let url = URL(string: link) else { return }
            session.dataTask(with: url) { [weak self] (data, response, error) in
                guard let strongSelf = self else { return }
                if error == nil, let parsData = data {
                    let response = try? strongSelf.decoder.decode(Response.self, from: parsData)
                    strongSelf.dataSource += response?.episodes ?? []
                } else { return }
                dispatchGroup.leave()
            }.resume()
        }
        dispatchGroup.notify(queue: .main) {
            completionHandler?()
        }
    }
    
}

extension NetworkService: NetworkOutputDelegate {
    func getData() {
        getEpisodes(links: ["https://rickandmortyapi.com/api/episode"]) { [weak self] in guard let self = self else { return }
            DispatchQueue.main.async {
                self.mainInteractorInput?.getData(data: self.dataSource)
            }
        }
    }
    
}
