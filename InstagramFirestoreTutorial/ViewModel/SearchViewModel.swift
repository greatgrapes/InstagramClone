//
//  SearchViewModel.swift
//  InstagramFirestoreTutorial
//
//  Created by 박진성 on 2023/05/05.
//

import Foundation

struct SearchViewModel {
   private let user: User
    
    var fullname: String {
        return user.fullName
    }
    
    var profileImageURL: URL? {
        return URL(string: user.prfileImageUrl)
    }
    
    var userName: String {
        return user.userName
    }
    
    
    init(user: User) {
        self.user = user
    }
}
