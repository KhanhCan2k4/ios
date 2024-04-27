//
//  UIRating.swift
//  FoodManagement2024
//
//  Created by  User on 27.04.2024.
//

import UIKit

class UIRating: UIStackView {

    //MARK: fields
    @IBInspectable private var starAmount:Int = 5 {
        didSet{
            setUp();
        }
    }
    @IBInspectable private var starSize:CGSize = CGSize(width: 44.0, height: 44.0) {
        didSet {
            setUp();
        }
    }
    private var ratingValue = 0;
    private var ratingButtons = [UIButton]();
    
    //MARK: constructors
    override init(frame: CGRect) {
        super.init(frame: frame);
        setUp();
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder);
        setUp();
    }
    
    //MARK: methods
    private func setUp() {
        //remove old items
        for button in ratingButtons {
            button.removeFromSuperview();
            removeArrangedSubview(button);
        }
        
        ratingButtons.removeAll();
        
        //load images from files
        let normalStar = UIImage(named: "normal");
        let highlightedStar = UIImage(named: "pressed");
        let selectedStar = UIImage(named: "selected");
        
        //create buttons
        for _ in 1...starAmount {
            let button = UIButton();
            
            //config size
            button.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true;
            button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true;
            
            //config background
//            button.backgroundColor = .systemYellow;
            button.setImage(normalStar, for: .normal);
            button.setImage(highlightedStar, for: .highlighted);
            button.setImage(selectedStar, for: .selected);
            
            //config event
            button.addAction(UIAction(handler: {action in
                //get button
                if let button = action.sender as? UIButton {
                    let index = self.ratingButtons.firstIndex(of: button);
                    let newRate = index! + 1;
                    
                    self.ratingValue = newRate == self.ratingValue ? newRate - 1 : newRate;
                    
                    self.update();
                }
                
            }), for: .touchUpInside)
            
            //append to UIRating
            //addSubview(button); //append to parent without ordering
            addArrangedSubview(button); //append to parent with ordering
            ratingButtons.append(button);
        }
        
        update();
    }
    
    private func update() {
//        for i in 0..<self.ratingButtons.count {
//            let item = self.ratingButtons[i];
//            if(i < self.ratingValue) {
//                item.isSelected = true;
//            } else {
//                item.isSelected = false;
//            }
//        }
        
        for (index, button) in self.ratingButtons.enumerated() {
            button.isSelected = index < self.ratingValue;
        }
    }
}
