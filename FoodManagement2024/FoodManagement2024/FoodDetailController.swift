//
//  ViewController.swift
//  FoodManagement2024
//
//  Created by  User on 20.04.2024.
//

import UIKit

//step 1: integrate delegated functions of UITextFieldDelegate class into this class
class FoodDetailController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    //MARK: fields
    @IBOutlet weak var foodName: UITextField!
    @IBOutlet weak var foodImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //step 3: perform delegating for foodName
        foodName.delegate = self;
    }
    
    //step 2: define delegated functions
    //MARK: define delegated functions of UITextField
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //hide the keyboard
        foodName.resignFirstResponder();
        return true;
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("\(foodName.text!)");
    }
    
    //MARK: methods
    
    //action for picking image in storage
    @IBAction func ImagePicker(_ sender: UITapGestureRecognizer) {
//        print("Image is tapped");
//        textFieldShouldReturn(foodName);
        foodName.resignFirstResponder();
        
        //pick a picture
        let imagePicker = UIImagePickerController();
        
        //cofig imagePicker
        imagePicker.sourceType = .photoLibrary;
        
        //perform delegating for imagePicker
        imagePicker.delegate = self;
        
        //transfer controll to imagePicker
        present(imagePicker, animated: true);
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.originalImage] {
            foodImage.image = image as? UIImage;
        }
        
        //back to prev screen
        dismiss(animated: true);
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        //hide current screen
        dismiss(animated: true);
    }
    
}
