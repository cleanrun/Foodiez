//
//  Review.swift
//  Foodiez
//
//  Created by Marchell on 27/12/20.
//

import Foundation

struct Review: Identifiable {
    let id = UUID()
    let name: String
    let review: String
    let rating: Int
    let reviewCount: Int
    let followerCount: Int
    let imageName: String
}

extension Review {
    static func all() -> [Review] {
        var getAll = [Review]()
        getAll.append(Review(name: "Katie Johnson", review: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo", rating: 3, reviewCount: 231, followerCount: 9982, imageName: "person_1"))
        getAll.append(Review(name: "Meghan Benett", review: "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet consecteturo", rating: 4, reviewCount: 543, followerCount: 112, imageName: "person_2"))
        getAll.append(Review(name: "Alex Wright", review: "Adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam", rating: 5, reviewCount: 22, followerCount: 192, imageName: "person_3"))
        getAll.append(Review(name: "Kaden Krasinski", review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam", rating: 2, reviewCount: 99, followerCount: 1232, imageName: "person_4"))
        getAll.append(Review(name: "Jocelyn Kenedy", review: "Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur", rating: 4, reviewCount: 99, followerCount: 982, imageName: "person_5"))
        
        return getAll
    }
}
