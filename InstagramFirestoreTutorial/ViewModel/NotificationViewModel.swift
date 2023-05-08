//
//  NotificationViewModel.swift
//  InstagramFirestoreTutorial
//
//  Created by 박진성 on 2023/05/05.
//

import UIKit

struct NotificationViewModel {
    
    
    var notification: Notification
    
    init(notification: Notification) {
        self.notification = notification
    }
    
    var postImageUrl: URL? {
        return URL(string: notification.postImageUrl ?? "")
    }
    
    var profileImageUrl: URL? {
        return URL(string: notification.userProfileImageUrl)
    }
    
    var notificationMessage: NSAttributedString {
        let username = notification.userName
        let message = notification.type.notificationMessage
        
        let attributedText = NSMutableAttributedString(string: "\(username)", attributes: [.font: UIFont.boldSystemFont(ofSize: 14)])
        
        attributedText.append(NSAttributedString(string: "님이 \(message)", attributes: [.font: UIFont.systemFont(ofSize: 14)]))
        
        return attributedText
    }
    
    var shouldHidepostImage: Bool {
        return self.notification.type == .follow
    }
    
    var followButtonText: String {return notification.userIsFollowed ? "팔로우 취소" : "팔로우"}
    
    var followButtonColor: UIColor {return notification.userIsFollowed ? UIColor.white : UIColor.systemBlue}
    
    var followButtonTextColor: UIColor {return notification.userIsFollowed ? UIColor.black : UIColor.white}

}
