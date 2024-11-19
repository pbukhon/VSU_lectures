//
//  ViewController.swift
//  URLSessionExample
//
//  Created by Pavel Bukhonov on 19.11.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let productsManager: ProductsManager = ProductsManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.productsManager.fetchProducts()
    }


}

