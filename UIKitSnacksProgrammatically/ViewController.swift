//
//  ViewController.swift
//  UIKitSnacksProgrammatically
//
//  Created by Sergey Zakharov on 07.06.2023.
//

import UIKit

class ViewController: UIViewController {

    var scrollView: UIScrollView!
    var scrollContent: UIView!
    var infoBlock: UIView!
    
    var snackImg: UIImageView!
    var snackTitle: UILabel!
    var snackWeight: UILabel!
//    var itemsBar: UIView!
//    var decreaseItemsCountBtn: UIButton!
//    var increaseItemsCountBtn: UIButton!
//    var itemsCount: UITextField!
//    var price: UILabel!
    
    var descriptionHeader: UILabel!
    var descriptionContent: UILabel!
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .systemBackground
        
        // adding scroll view
        scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        // adding scroll content
        scrollContent = UIView()
        scrollContent.translatesAutoresizingMaskIntoConstraints = false
        
        // adding snack image
        snackImg = UIImageView(image: UIImage(named: "Snack"))
        snackImg.translatesAutoresizingMaskIntoConstraints = false
        snackImg.contentMode = .scaleAspectFit
        
        
        // adding snack title
        snackTitle = UILabel()
        snackTitle.translatesAutoresizingMaskIntoConstraints = false
        snackTitle.text = "Vegan Protein Bar"
        snackTitle.font = UIFont.systemFont(ofSize: 52, weight: .light)
        snackTitle.numberOfLines = 0
        
        // adding snack weight
        snackWeight = UILabel()
        snackWeight.translatesAutoresizingMaskIntoConstraints = false
        snackWeight.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        snackWeight.text = "50g"
        
        // here goes horizontal bar with buttons and price
        // ...
        
        // adding description
        descriptionHeader = UILabel()
        descriptionHeader.translatesAutoresizingMaskIntoConstraints = false
        descriptionHeader.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        descriptionHeader.text = "About"
        
        descriptionContent = UILabel()
        descriptionContent.translatesAutoresizingMaskIntoConstraints = false
        descriptionContent.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        descriptionContent.numberOfLines = 0
        descriptionContent.text = "A vegan protein bar without compromises. We have chosen the most suitable source of vegetable protein, which meets our quality requirements and does not significantly affect the taste of the bar."
        
        scrollContent.addSubview(snackImg)
        scrollContent.addSubview(snackTitle)
        scrollContent.addSubview(snackWeight)
        // ... here goes horizontal bar with buttons and price
        scrollContent.addSubview(descriptionHeader)
        scrollContent.addSubview(descriptionContent)
        
        scrollView.addSubview(scrollContent)
        view.addSubview(scrollView)
        
        // respecting safe area properties
        let sa = view.safeAreaLayoutGuide
        let constraints = [
            scrollView.topAnchor.constraint(equalTo: sa.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: sa.bottomAnchor),
            scrollView.trailingAnchor.constraint(equalTo: sa.trailingAnchor),
            scrollView.leadingAnchor.constraint(equalTo: sa.leadingAnchor),
            
            scrollContent.topAnchor.constraint(equalTo: scrollView.topAnchor),
            scrollContent.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            scrollContent.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            scrollContent.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            
            scrollContent.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            scrollContent.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
            
            snackImg.topAnchor.constraint(equalTo: scrollContent.topAnchor),
            snackImg.leadingAnchor.constraint(equalTo: scrollContent.leadingAnchor),
            snackImg.trailingAnchor.constraint(equalTo: scrollContent.trailingAnchor),
            
            snackTitle.topAnchor.constraint(equalTo: snackImg.bottomAnchor),
            snackTitle.leadingAnchor.constraint(equalTo: scrollContent.leadingAnchor),
            snackTitle.trailingAnchor.constraint(equalTo: scrollContent.trailingAnchor),
            
            snackWeight.topAnchor.constraint(equalTo: snackTitle.bottomAnchor),
            snackWeight.leadingAnchor.constraint(equalTo: scrollContent.leadingAnchor),
            snackWeight.trailingAnchor.constraint(equalTo: scrollContent.trailingAnchor),
            
            descriptionHeader.topAnchor.constraint(equalTo: snackWeight.bottomAnchor),
            descriptionHeader.leadingAnchor.constraint(equalTo: scrollContent.leadingAnchor),
            descriptionHeader.trailingAnchor.constraint(equalTo: scrollContent.trailingAnchor),
            
            descriptionContent.topAnchor.constraint(equalTo: descriptionHeader.bottomAnchor),
            descriptionContent.leadingAnchor.constraint(equalTo: scrollContent.leadingAnchor),
            descriptionContent.trailingAnchor.constraint(equalTo: scrollContent.trailingAnchor),
        ]
        
        NSLayoutConstraint.activate(constraints)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}

