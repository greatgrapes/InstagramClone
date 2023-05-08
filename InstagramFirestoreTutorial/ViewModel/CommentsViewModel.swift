//
//  CommentsViewModel.swift
//  InstagramFirestoreTutorial
//
//  Created by 박진성 on 2023/05/05.
//

import UIKit

struct CommentsViewModel {
    let comment: Comment

    
    var userProfileImageUrl: URL? {
        return URL(string: comment.profileimageUrl)
    }

    
    init(comment: Comment) {
        self.comment = comment
    }
    
    func commentLabelText() -> NSAttributedString {
        let attributedString = NSMutableAttributedString(string: "\(comment.username)", attributes: [.font: UIFont.boldSystemFont(ofSize: 14)])
        attributedString.append(NSAttributedString(string: "  \(comment.commentText)", attributes: [.font: UIFont.systemFont(ofSize: 14)]))
        return attributedString
    }
    
    func size(width: CGFloat) -> CGSize {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = comment.commentText
        label.lineBreakMode = .byWordWrapping
        label.setWidth(width)
        return label.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
    }
}
