//
//  MovieTableViewCell.swift
//  DesafioMobile2You
//
//  Created by Paulo Rodrigues on 31/08/21.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieYearGenreLabel: UILabel!
    
    static let identifier: String = "MovieTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    public func setupCell(data: Movie) {
        self.movieImageView.image = data.movieImage
        self.movieTitleLabel.text = data.movieTitle
        self.movieYearGenreLabel.text = "\(data.movieYear) \(data.movieGenre)"
    }
    
}
