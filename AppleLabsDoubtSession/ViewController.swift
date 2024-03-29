//
//  ViewController.swift
//  AppleLabsDoubtSession
//
//  Created by Darshil Agrawal on 08/06/21.
//

import UIKit

class ViewController: UIViewController {

    
    var cookArray:[UIImage]?
    var craigArray:[UIImage]?
    var mainArray:[[UIImage]] = [[]]
    @IBOutlet weak var testCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        testCollectionView.delegate = self
        testCollectionView.dataSource = self
        let image1 = #imageLiteral(resourceName: "cook5")
        let image2 = #imageLiteral(resourceName: "cook1")
        let image3 = #imageLiteral(resourceName: "cook2")
        let image4 = #imageLiteral(resourceName: "cook3")
        let image5 = #imageLiteral(resourceName: "cook5")
        let image6 = #imageLiteral(resourceName: "craig5")
        let image7 = #imageLiteral(resourceName: "craig2")
        let image8 = #imageLiteral(resourceName: "craig3")
        let image9 = #imageLiteral(resourceName: "craig1")
        let image10 = #imageLiteral(resourceName: "craig4")
        
        cookArray = [image1 , image2 , image3 , image4 , image5 ]
        craigArray = [image6 , image7 , image8 , image9 , image10 ]
        let nib = UINib(nibName: "ImagesCell", bundle: nil)
        testCollectionView.register(nib, forCellWithReuseIdentifier: "ImagesCell")
        mainArray[0] = craigArray!
        mainArray.append(cookArray!)
        mainArray.append(craigArray!)
        mainArray.append(cookArray!)
        mainArray.append(craigArray!)
        mainArray.append(cookArray!)
        mainArray.append(craigArray!)
        mainArray.append(cookArray!)
        mainArray.append(craigArray!)
        mainArray.append(cookArray!)
    }
}

extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return mainArray.count
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        mainArray[section].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = testCollectionView.dequeueReusableCell(withReuseIdentifier: "ImagesCell", for: indexPath) as? ImagesCell else {
            fatalError("Cannot Load Cell")
        }
        cell.imageToShow.image=mainArray[indexPath.section][indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let horizontalSpacing:CGFloat=10
        let columns:CGFloat=2
        let totalHorizontalSpacing = (columns-1)*horizontalSpacing
        let width = (collectionView.frame.width - totalHorizontalSpacing)/columns
        return CGSize(width: width, height: width/1.5)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let categoryHeader = testCollectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "Header", for: indexPath) as? HeaderPart else{
            fatalError("Could not load")
        }
        if(indexPath.section % 2 == 0) {
        categoryHeader.headerLabel.text = "Craig federighi"
            categoryHeader.backgroundColor = UIColor.cyan
        } else {
        categoryHeader.headerLabel.text = "Tim Cook"
            categoryHeader.backgroundColor = UIColor.purple
        }
        return categoryHeader
    }
}

