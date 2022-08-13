//
//  CollectionViewController.swift
//  TableView
//
//  Created by Tommy-amarbank on 13/08/22.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  

    @IBOutlet weak var collectionView: UICollectionView!
    
    var data: [FieldDataModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NetworkHelper.call {[weak self] data in
            if let data = data?.data {
                self?.data = data
                self?.collectionView.reloadData()
            }
        }
        collectionView.dataSource = self
        collectionView.delegate = self
        // Do any additional setup after loading the view.
        collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.containerCell.backgroundColor = .red
        cell.titleCell.text = data[indexPath.row].id_field?.description
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width: CGFloat = collectionView.frame.width / 3
        return CGSize(width: width, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
}
