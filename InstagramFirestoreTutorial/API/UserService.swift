//
//  UserService.swift
//  InstagramFirestoreTutorial
//
//  Created by 박진성 on 2023/05/04.
//

import Firebase

struct UserService {
    
    static func fetchUser(completion: @escaping(User) -> Void) {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        COLLECTION_USERS.document(uid).getDocument { snapshot, error in
            print("DEBUG: Snapshot is \(snapshot?.data())")
            guard let dictionary = snapshot?.data() else { return }
            let user = User(dictionary: dictionary)
            completion(user)
            
        }
    }
}
