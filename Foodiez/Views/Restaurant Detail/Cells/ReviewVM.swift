//
//  ReviewVM.swift
//  Foodiez
//
//  Created by Marchell on 27/12/20.
//

import Foundation

class ReviewVM: ObservableObject, Identifiable {
    let id = UUID()
    var review: Review
    
    var name: String {
        return self.review.name
    }
    
    var reviewDesc: String {
        return self.review.review
    }
    
    var rating: Int {
        return self.review.rating
    }
    
    var reviewCount: Int {
        return self.review.reviewCount
    }
    
    var followerCount: Int {
        return self.review.followerCount
    }
    
    var imageName: String {
        return self.review.imageName
    }
    
    init(review: Review) {
        self.review = review
    }
}
