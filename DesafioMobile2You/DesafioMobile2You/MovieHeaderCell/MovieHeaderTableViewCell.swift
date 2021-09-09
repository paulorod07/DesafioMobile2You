//
//  MovieHeaderTableViewCell.swift
//  DesafioMobile2You
//
//  Created by Paulo Rodrigues on 08/09/21.
//

import UIKit

class MovieHeaderTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var likesLabel: UILabel!
    @IBOutlet weak var heartImageView: UIImageView!
    @IBOutlet weak var watchedLabel: UILabel!
    
    @IBOutlet weak var heartButton: UIButton!
    static let identifier: String = "MovieHeaderTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func tappedHeartButton(_ sender: UIButton) {
    }
    
//    func setupCell(movieData: Movie) {
//        self.titleLabel.text = movieData.movieTitle
//    }
    

}
