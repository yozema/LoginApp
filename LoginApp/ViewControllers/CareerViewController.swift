//
//  CareerViewController.swift
//  LoginApp
//
//  Created by Ilya Zemskov on 12.03.2023.
//

import UIKit

final class CareerViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var divisionLabel: UILabel!
    @IBOutlet var departmentLabel: UILabel!
    @IBOutlet var positionLabel: UILabel!
    
    @IBOutlet var photoImage: UIImageView!
    
    var person: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.changeBackgroundColor()
        userSetup()
    }
    
    override func viewDidLayoutSubviews() {
        photoImage.layer.cornerRadius = photoImage.frame.height / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreDetailsVC = segue.destination as? MoreDetailsViewController else { return }
        moreDetailsVC.moreDetails = person
    }
    
    // MARK: - User Setup
    private func userSetup() {
        navigationItem.title = person.person.fullName
        nameLabel.text = person.person.name
        surnameLabel.text = person.person.surname
        companyLabel.text = person.person.company
        divisionLabel.text = person.person.division
        departmentLabel.text = person.person.department
        positionLabel.text = person.person.position.rawValue
        photoImage.image = UIImage(named: person.person.photo)
    }
}
