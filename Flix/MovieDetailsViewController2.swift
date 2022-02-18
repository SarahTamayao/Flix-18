//
//  MovieDetailsViewController2.swift
//  Flix
//
//  Created by Bryan Santos on 2/18/22.
//

import UIKit

class MovieDetailsViewController2: UIViewController {
    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie: [String:Any]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let posterPath = movie["poster_path"] as! String
        let backdropPath = movie["backdrop_path"] as? String ?? "https://img.freepik.com/free-photo/assortment-cinema-elements-red-background-with-copy-space_23-2148457848.jpg?size=626&ext=jpg"
        let posterURL = URL(string: "https://image.tmdb.org/t/p/w185" + posterPath)
        var backdropURL = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        if (movie["backdrop_path"] as? String == nil) {
           backdropURL = URL(string: backdropPath)
        }
        
        titleLabel.text = movie["title"] as? String
        synopsisLabel.text = movie["overview"] as? String
        dateLabel.text = movie["release_date"] as? String
        posterView.af.setImage(withURL: posterURL!)
        backdropView.af.setImage(withURL: backdropURL!)
        
        self.title = titleLabel.text
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
