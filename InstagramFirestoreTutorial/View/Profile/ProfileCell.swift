//
//  ProfileCell.swift
//  InstagramFirestoreTutorial
//
//  Created by 박진성 on 2023/05/04.
//

import UIKit

class ProfileCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    private let postImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "venom-7")
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    
    // MARK: - Lifecycle
    override init(frame: CGRect){
        super.init(frame: frame)
        
        
        backgroundColor = .gray
        
        addSubview(postImageView)
        postImageView.fillSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}