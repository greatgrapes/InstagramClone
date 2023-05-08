//
//  CommentService.swift
//  InstagramFirestoreTutorial
//
//  Created by 박진성 on 2023/05/05.
//

import Firebase


struct CommentService {
    static func uploadComment(comment: String, postID: String, user: User, completion: @escaping(Error?) -> Void) {
        let data: [String: Any] = ["uid": user.uid, "comment": comment,"timestamp": Timestamp(date: Date()), "username": user.userName,"profileImageUrl":user.prfileImageUrl]
        
        COLLECTION_POSTS.document(postID).collection("comments").addDocument(data: data, completion: completion)
    }
    
    static func fetchComments(postID: String, completion: @escaping ([Comment]) -> Void) {
        var comments = [Comment]()
        let query = COLLECTION_POSTS.document(postID).collection("comments").order(by: "timestamp", descending: false)
        
        query.addSnapshotListener { snap, error in
            snap?.documentChanges.forEach({ change in
                if change.type == .added {
                    let data = change.document.data()
                    let comment = Comment(dic: data)
                    comments.append(comment)
                }
            })
            
            completion(comments)
        }
    }
}
