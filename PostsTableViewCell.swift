//
//  PostsTableViewCell.swift
//  Instagram
//
//  Created by yulin on 2021/1/27.
//  Copyright © 2021 yulin.com. All rights reserved.
//

import UIKit

class PostsTableViewCell: UITableViewCell,UICollectionViewDelegate {

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
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(LivePostsCollectionViewCell.self)", for: indexPath) as! LivePostsCollectionViewCell
      
        cell.livePostImageView.image = UIImage(named: "pic\(indexPath)")
        cell.livePostNameLabel.text = "name\(indexPath)"
        return cell
    }
    
    
//   func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(LivePostsCollectionViewCell.self)", for: indexPath ) as! LivePostsCollectionViewCell
//
//        cell.livePostImageView.image = UIImage(named: "pic\(indexPath)")
//        cell.livePostNameLabel.text = "name\(indexPath)"
//
//        return cell
//    }

}



