//
//  ProfileHeaderViewModel.swift
//  InstagramFirestoreTutorial
//
//  Created by 박진성 on 2023/05/04.
//

import Foundation

struct ProfileHeaderViewModel {
    let user: User
    
    
    var fullname: String {
        return user.fullname
    }
    
    var profileImageUrl: URL? {
        return URL(string: user.profileImageUrl)
    }
    
    
    init(user: User) {
        self.user = user
    }
    
}
