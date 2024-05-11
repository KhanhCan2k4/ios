//
//  CalendarController.swift
//  DemoWeatherApp
//
//  Created by  User on 11.05.2024.
//

import UIKit

private let reuseIdentifier = "Cell"

class CalendarController: UICollectionViewController {
    //MARK: FIELDS
    private var calendar = Calendar.current;
    private var currentDay = 1;
    private var currentMonth = 1;
    private var currentYear = 2000;
    
    
    @IBOutlet weak var lblCurrentDate: UILabel!
    
    @IBAction func goPrevMonth(_ sender: UIButton) {
        currentMonth -= 1;
        if currentMonth <= 0 {
            currentMonth = 12;
            currentYear -= 1;
        }
    }
    
    @IBAction func doNextMonth(_ sender: UIButton) {
        currentMonth += 1;
        
        if currentMonth >= 13 {
            currentMonth = 1;
            currentYear += 1;
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentDay = calendar.component(.day, from: Date());
        currentMonth = calendar.component(.month, from: Date());
        currentYear = calendar.component(.year, from: Date());
        
        updateCalendar();

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */
    
    //MARK: METHODS
    private func updateCalendar() {
        print("current \(currentMonth)")
    }

}
