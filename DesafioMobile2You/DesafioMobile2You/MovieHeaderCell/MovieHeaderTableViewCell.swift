//
//  MovieHeaderTableViewCell.swift
//  DesafioMobile2You
//
//  Created by Paulo Rodrigues on 08/09/21.
//

import UIKit

class MovieHeaderTableViewCell: UITableViewCell {
    
    static let identifier: String = "MovieHeaderTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
