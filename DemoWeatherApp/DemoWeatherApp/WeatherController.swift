//
//  ViewController.swift
//  DemoWeatherApp
//
//  Created by  User on 20.04.2024.
//

import UIKit

class WeatherController: UIViewController,
                         UICollectionViewDelegate,
                         UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = hourWeatherCollection.dequeueReusableCell(withReuseIdentifier: "HourWeatherCell", for: indexPath) as? HourWeatherCell {
            
            return cell;
        }
        
        fatalError("Cannot create date's cell");
    }
    
    //MARK: FIELDS
    private var weather = Weather();
    
    @IBOutlet weak var weatherType: UIImageView!
    
    @IBOutlet weak var nowDeg: UILabel!
    
    @IBOutlet weak var desc: UILabel!
    
    @IBOutlet weak var minMaxDeg: UILabel!
    
    @IBOutlet weak var feelLikeDeg: UILabel!
    
    @IBOutlet weak var wind: UILabel!
    
    @IBOutlet weak var humid: UILabel!
    
    @IBOutlet weak var uv: UILabel!
    
    @IBOutlet weak var visibility: UILabel!
    
    @IBOutlet weak var airPressure: UILabel!
    
    @IBAction func endView(_ sender: UIBarButtonItem) {
        dismiss(animated: true);
    }
    
    @IBOutlet weak var hourWeatherCollection: HourWeatherView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //get weather
        weather.NowDeg = 29.5;
        weather.Desc = "Mưa nhiều";
        weather.MinDeg = 27.5;
        weather.MaxDeg = 28.5;
        weather.FeelLikeDeg = 30.0;
        weather.Wind = 10.0;
        weather.Humid = 80.0;
        weather.UV = 30.0;
        weather.Visibility = 10000.0;
        weather.AirPressure = 1200.0;
        
        //show data
        nowDeg.text = "\(weather.NowDeg)°";
        desc.text = weather.Desc;
        minMaxDeg.text = "Min: \(weather.MinDeg)° Max: \(weather.MaxDeg)°";
        feelLikeDeg.text = "\(weather.FeelLikeDeg)°";
        wind.text = "\(weather.Wind) km/h";
        humid.text = "\(weather.Humid)%";
        uv.text = "\(weather.UV)";
        visibility.text = "\(weather.Visibility) km";
        airPressure.text = "\(weather.AirPressure) hPa";
        switch weather.WeatherType {
            default:
            weatherType.image = UIImage(named: "sunny");
        }
    }

    

}
