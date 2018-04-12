//
//  TableViewCell.swift
//  Exhibitі_Test
//
//  Created by Alexander Yakovenko on 4/12/18.
//  Copyright © 2018 Alexander Yakovenko. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override func layoutSubviews() {
        collectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! CollectionViewCell
        //cell.titleLabel =
        cell.imageView.image = #imageLiteral(resourceName: "image")
        return cell
    }
    
    

}
