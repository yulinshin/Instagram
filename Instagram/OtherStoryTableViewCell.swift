//
//  OtherStoryTableViewCell.swift
//  Instagram
//
//  Created by yulin on 2021/1/29.
//  Copyright © 2021 yulin.com. All rights reserved.
//

import UIKit

class OtherStoryTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension OtherPostTableViewCell:UICollectionViewDelegate,UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(StoryCollectionViewCell.self)", for:indexPath) as! StoryCollectionViewCell
        
        cell.CoverImageView.image = UIImage(named: "pic\(indexPath.row+1)")
        cell.CoverImageLabel.text = "name\(indexPath.row+1)"
        
        return cell
    }
    
    
}
