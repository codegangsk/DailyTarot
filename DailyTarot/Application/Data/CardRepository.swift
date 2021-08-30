//
//  CardRepository.swift
//  DailyTarot
//
//  Created by Sophie Kim on 2021/08/30.
//

import Foundation
import Alamofire

struct CardRepository {
    let baseURL = URL(string: "https://rws-cards-api.herokuapp.com/api/v1/cards")!
    var cards : Cards
    init() {
        fetchCards()
    }
}

extension CardRepository {
    func fetchCards() {
        AF.request(baseURL)
          .validate()
          .responseDecodable(of: Cards.self) { (response) in
            guard let cards = response.value else { return }
            print(cards.cards![1].name_short!)
        }
    }
}
