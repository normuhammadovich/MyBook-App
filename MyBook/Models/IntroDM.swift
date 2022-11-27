//
//  IntroDM.swift
//  MyBook
//
//  Created by Chingiz Jumanov on 28/11/22.
//

import UIKit

struct IntroDM {
    var title: String
    var description: String
    var imgStr: String
    
    var image: UIImage {
        return UIImage(named: imgStr)!
    }
}
