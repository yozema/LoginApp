//
//  MoreDetailsViewController.swift
//  LoginApp
//
//  Created by Ilya Zemskov on 12.03.2023.
//

import UIKit

final class MoreDetailsViewController: UIViewController {
    
    @IBOutlet var moreDetailsTextView: UITextView!
    
    var moreDetails: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.changeBackgroundColor()
        title = "\(moreDetails.person.fullName) Bio"
        moreDetailsTextView.backgroundColor = .clear
        moreDetailsTextView.textColor = .white
        moreDetailsTextView.text = moreDetails.person.position.moreDetails
        
    }
}
