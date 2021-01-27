//
//  PostsTableViewCell.swift
//  Instagram
//
//  Created by yulin on 2021/1/27.
//  Copyright © 2021 yulin.com. All rights reserved.
//

import UIKit

class PostsTableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: - Collection view data source
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
       

        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(LivePostsCollectionViewCell.self)", for: indexPath) as! LivePostsCollectionViewCell
        let user = indexPath.row + 1 
        cell.livePostImageView.image = UIImage(named: "pic\(user)")
        cell.livePostNameLabel.text = "name\(user)"
       
        return cell
        
    }
    


}



