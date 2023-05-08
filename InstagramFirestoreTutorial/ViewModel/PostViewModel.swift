//
//  PostViewModel.swift
//  InstagramFirestoreTutorial
//
//  Created by 박진성 on 2023/05/05.
//

import Foundation
import UIKit

struct PostViewModel {
    var post: Post
    
    var imageUrl: URL? {
        return URL(string: post.imageUrl)
    }
    
    var userProfileImageUrl: URL? {
        return URL(string: post.ownderImageUrl)
    }
    
    var username: String {
        return post.ownerUserName
    }
    
    var caption: String {
        return post.caption
    }
    
    var likes: Int {
        return post.likes
    }
    
    var likeButtonTintColor: UIColor {
        return post.didLike ? .red : .black
    }
    
    var likeButtonImage: UIImage {
        let imageName = post.didLike ? "like_selected" : "like_unselected"
        
        return UIImage(named: imageName) ?? UIImage()
    }
    
    
    init(post: Post) {
        self.post = post
    }
}
