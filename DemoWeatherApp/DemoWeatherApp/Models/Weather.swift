//
//  Weather.swift
//  DemoWeatherApp
//
//  Created by MAC on 18/5/24.
//

import Foundation

class Weather {
    //fields
    private var nowDeg:Float;
    private var desc:String;
    private var minDeg:Float;
    private var maxDeg:Float;
    private var feelLikeDeg:Float;
    private var wind:Float;
    private var humid:Float;
    private var uv:Float;
    private var visibility:Float;
    private var airPressure:Float;
    private var type:String;
    
    //properties
    var NowDeg:Float {
        set {
            self.nowDeg = newValue;
        }
        
        get {
            return self.nowDeg;
        }
    }
    
    var WeatherType:String {
        set {
            self.type = newValue;
        }
        
        get {
            return self.type;
        }
    }
    
    var Desc:String {
        set {
            self.desc = newValue;
        }
        
        get {
            return self.desc;
        }
    }
    
    var MinDeg:Float {
        set {
            self.minDeg = newValue;
        }
        
        get {
            return self.minDeg;
        }
    }
    
    var MaxDeg:Float {
        set {
            self.maxDeg = newValue;
        }
        
        get {
            return self.maxDeg;
        }
    }
    
    var FeelLikeDeg:Float {
        set {
            self.feelLikeDeg = newValue;
        }
        
        get {
            return self.feelLikeDeg;
        }
    }
    
    var Wind:Float {
        set {
            self.wind = newValue;
        }
        
        get {
            return self.wind;
        }
    }
    
    var Humid:Float {
        set {
            self.humid = newValue;
        }
        
        get {
            return self.humid;
        }
    }
    
    var UV:Float {
        set {
            self.uv = newValue;
        }
        
        get {
            return self.uv;
        }
    }
    
    var Visibility:Float {
        set {
            self.visibility = newValue;
        }
        
        get {
            return self.visibility;
        }
    }
    
    var AirPressure:Float {
        set {
            self.airPressure = newValue;
        }
        
        get {
            return self.airPressure;
        }
    }
    
    //contructor
    init() {
        self.nowDeg = 0.0;
        self.desc = "";
        self.minDeg = 0.0;
        self.maxDeg = 0.0;
        self.feelLikeDeg = 0.0;
        self.wind = 0.0;
        self.humid = 0.0;
        self.uv = 0.0;
        self.visibility = 0.0;
        self.airPressure = 0.0;
        self.type = "";
    }
    
    //method

}
