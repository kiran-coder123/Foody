//
//  ViewController.swift
//  Foody
//
//  Created by Kiran Sonne on 26/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recipeImageView: UIImageView!
    @IBOutlet weak var recipeNameLabel: UILabel!
    @IBOutlet weak var recipeMethodTextview: UITextView!
    
    var recipeBook = RecipeBook()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let nextRecipe = recipeBook.getNextRecipe()
        
        recipeImageView.image = UIImage(named: nextRecipe.imageName)
        recipeNameLabel.text = nextRecipe.name
        recipeMethodTextview.text = nextRecipe.method
    }

    @IBAction func newRecipeButton(_ sender: UIButton) {
        let nextRecipe = recipeBook.getNextRecipe()
        recipeImageView.image = UIImage(named: nextRecipe.imageName)
        recipeNameLabel.text = nextRecipe.name
        recipeMethodTextview.text = nextRecipe.method
    }
    
}

