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
        self.configTableView()
    }
    
    private func configArrowBackButton() {
        self.arrowBackButton.backgroundColor = .gray
        self.arrowBackButton.layer.cornerRadius = self.arrowBackButton.frame.size.height / 2
    }
    
    private func configTableView() {
        self.moviesTableView.delegate = self
        self.moviesTableView.dataSource = self
        
        self.moviesTableView.register(MovieHeaderTableViewCell.nib(), forCellReuseIdentifier: MovieHeaderTableViewCell.identifier)
        
        self.moviesTableView.register(MovieTableViewCell.nib(), forCellReuseIdentifier: MovieTableViewCell.identifier)
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row > 0 {
            guard let cell: MovieTableViewCell = tableView.dequeueReusableCell(withIdentifier: MovieTableViewCell.identifier, for: indexPath) as? MovieTableViewCell else { return UITableViewCell() }
            
            
            return cell
        }
        
        guard let headerCell: MovieHeaderTableViewCell = tableView.dequeueReusableCell(withIdentifier: MovieHeaderTableViewCell.identifier, for: indexPath) as? MovieHeaderTableViewCell else { return UITableViewCell() }
        
        return headerCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row > 0 {
            return 105
        }
    
        return 120
    }
    
    
}

