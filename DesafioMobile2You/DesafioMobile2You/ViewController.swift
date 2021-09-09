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
        self.arrowBackButton.layer.cornerRadius = self.arrowBackButton.frame.size.height / 2
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}

