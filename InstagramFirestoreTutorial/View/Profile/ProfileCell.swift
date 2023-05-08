//
//  ProfileCell.swift
//  InstagramFirestoreTutorial
//
//  Created by 박진성 on 2023/05/04.
//

import UIKit

class ProfileCell: UICollectionViewCell {
    static let identifier = "profilecell"
    
    var viewModel: PostViewModel? {
        didSet{
            confiure()
        }
    }
    
    private let postImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "venom-7")
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(postImageView)
        postImageView.fillSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func confiure() {
        guard let viewModel = viewModel else {
            return
        }
        
        postImageView.sd_setImage(with: viewModel.imageUrl)
        
    }
    
}
