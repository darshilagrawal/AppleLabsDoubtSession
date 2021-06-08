//
//  ViewController.swift
//  AppleLabsDoubtSession
//
//  Created by Darshil Agrawal on 08/06/21.
//

import UIKit

class ViewController: UIViewController {

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
        let cookArray = [image1 , image2 , image3 , image4 , image5 ]
        let craigArray = [image6 , image7 , image8 , image9 , image10 ]
    }


}
extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
}

