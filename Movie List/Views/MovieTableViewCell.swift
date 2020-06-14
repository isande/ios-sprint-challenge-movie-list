//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Peggy Wollenhaupt on 5/30/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var seenButton: UIButton!
    

    private func updateViews() {
        guard let unwrappedMovie = movie else { return }
        titleLabel.text = unwrappedMovie.name
        
        if unwrappedMovie.isSeen == true {
            seenButton.setTitle("Seen", for: .normal)
        } else {
            seenButton.setTitle("Not Seen", for: .normal)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func seenButtonTapped(_ sender: UIButton) {
        if (sender.titleLabel?.text) != nil {
                movie?.isSeen.toggle()
        }
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
