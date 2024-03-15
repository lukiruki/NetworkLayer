//
//  ViewController.swift
//  NetworkIOSLayer
//
//  Created by Lukas on 08/03/2024.
//

import UIKit

class ViewController: UIViewController {

    let client = Client<PlaceHolderRoute>()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let publisher = client.request([User].self, from: .users)

    }


}

