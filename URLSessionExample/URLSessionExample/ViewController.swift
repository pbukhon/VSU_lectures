//
//  ViewController.swift
//  URLSessionExample
//
//  Created by Pavel Bukhonov on 19.11.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let productsManager: ProductsManager = ProductsManager()
    
    @IBOutlet var collectionView: UICollectionView!

    private var products: [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.productsManager.fetchProducts { result in
            switch result {
            case .success(let products):
                self.products = products
                self.collectionView.reloadData()
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }


}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as! ProductCollectionViewCell
        cell.product = self.products[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.size.width / 2.0
        return CGSize(width: width, height: width * 1.9354)
    }
}

extension ViewController: UICollectionViewDelegate {
    
}
