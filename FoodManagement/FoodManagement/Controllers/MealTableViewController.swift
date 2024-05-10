//
//  MealTableViewController.swift
//  FoodManagement
//
//  Created by Chiendevj on 04/05/2024.
//

import UIKit

class MealTableViewController: UITableViewController {

    // MARK: Properties
    private var meals = [Meal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Tạo dữ liệu giả cho TBView
        if let meal = Meal(name: "Dau sot ca chua", image: UIImage(named: "default"), rating: 3) {
            meals.append(meal)
        }
        
        if let meal2 = Meal(name: "Banh canh ca loc", image: UIImage(named: "banh-canh"), rating: 4) {
            meals.append(meal2)
        }
        
        if let meal3 = Meal(name: "Bun dau mam tom", image: UIImage(named: "bun-dau"), rating: 5) {
            meals.append(meal3)
        }
        
        if let meal4 = Meal(name: "Doi nuong, long nuong", image: UIImage(named: "doi-nuong"), rating: 4) {
            meals.append(meal4)
        }
        
        if let meal5 = Meal(name: "Muc kho", image: UIImage(named: "muc"), rating: 4) {
            meals.append(meal5)
        }
        
        if let meal6 = Meal(name: "Oc huong mo hanh", image: UIImage(named: "oc-huong"), rating: 5) {
            meals.append(meal6)
        }
        
        if let meal7 = Meal(name: "Banh bot loc", image: UIImage(named: "banh-bot-loc"), rating: 3) {
            meals.append(meal7)
        }
        
        

    }
    
    // MARK: Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let reuseCell = "MealCell";
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: reuseCell, for: indexPath) as? MealCell {
            
            // Lay phan tu thu i trong mang meals
            let meal = meals[indexPath.row]
            cell.mealImage.image = meal.image
            cell.mealName.text = meal.name
            cell.rating.rating = meal.rating
            
            return cell
        }
        
        // Lỗi nghiêm trọng => dùng fatalError
        fatalError("Không thể tạo Cell!")
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation
    
    @IBAction func newMeal(_ sender: UIBarButtonItem) {
        // Tao doi tuong man hinh MealDetailController
        if let detailController = self.storyboard!.instantiateViewController(withIdentifier: "MealDetail") as? MealDetailController {
            // Hiển thị màn hình MealDetailController
            present(detailController, animated: true)
        }
    }
    
    // MARK: Write unwind phải có @IBAction
    @IBAction func unwindFromMealDetail(_ segue:UIStoryboardSegue) {
          print("Hello")
    }
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
