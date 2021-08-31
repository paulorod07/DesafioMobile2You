//
//  ViewController.swift
//  DesafioMobile2You
//
//  Created by Paulo Rodrigues on 28/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var arrowBackButton: UIButton!
    @IBOutlet weak var artistImageView: UIImageView!
    @IBOutlet weak var moviesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configArrowBackButton()
    }
    
    private func configArrowBackButton() {
        self.arrowBackButton.backgroundColor = .gray
        self.arrowBackButton.layer.cornerRadius = self.arrowBackButton.frame.height / 2
    }


}

