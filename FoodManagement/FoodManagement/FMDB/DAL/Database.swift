//
//  Database.swift
//  FoodManagement
//
//  Created by  User on 18.05.2024.
//

import Foundation
import UIKit
import os.log

class Database {
    //MARK: common properties
    private let DB_NAME = "meal_management.sqlite";
    private var DB_PATH:String?;
    private var database:FMDatabase?;
    
    //MARK: tables' properties
    //1. Meal
    private let MEAL_TABLE_NAME = "meals";
    private let MEAL_ID = "_id";
    private let MEAL_NAME = "name";
    private let MEAL_IMAGE = "image";
    private let MEAL_RATING = "rating";
    
    //MARK: contructor
    init() {
        //get all paths to all folder documnets in an ios app
        let dirs = NSSearchPathForDirectoriesInDomains(.documentDirectory, .allDomainsMask, true);
        DB_PATH = "\(dirs[0])/\(DB_NAME)";
        
        //declare database
        database = FMDatabase(path: DB_PATH);
        
        //check success
        if database != nil{
            os_log("database is now active");
            
            let query = "CREATE TABLE \(MEAL_TABLE_NAME) ("
                + "\(MEAL_ID) INTEGER PRIMARY KEY AUTOINCREMENT, "
                + "\(MEAL_NAME) TEXT, "
                + "\(MEAL_IMAGE) TEXT, "
                + "\(MEAL_RATING) INTEGER "
            + ")";
            
            if open(), !database!.tableExists(MEAL_TABLE_NAME){
                let _ = createTable(query: query);
            }
            
        } else {
            os_log("database has errors")
        }
    }
    
    //MARK: primitives methods
    //1. oepn database
    private func open()-> Bool {
        
        if database != nil{
            return database!.open();
        }
        
        os_log("cannot open database")
        return false;
    }
    
    //2. close database
    private func close() -> Bool {
        
        if database != nil {
            return database!.close();
        }
        
        os_log("cannot close database")
        return false;
    }
    
    //3. create tables
    private func createTable(query:String) ->Bool {
        
        if open() {
            return database!.executeStatements(query);
        }
        
        os_log("cannot create table");
        return false;
    }
    
    
    //MARK: api methods
    //1. store newmeal
    public func store(meal:Meal) ->Bool {
        
        if open() {
            //check existing table
            if database!.tableExists(MEAL_TABLE_NAME){
                let query = "INSERT INTO \(MEAL_TABLE_NAME)"
                + " (\(MEAL_NAME),\(MEAL_IMAGE),\(MEAL_RATING))"
                + " VALUES "
                + " (?,?,?)";
                
                //convert image into string
                var strImage = "";
                
                if let image = meal.image{
                    //1. convert image into NSData
                    let nsDataIMG = image.pngData()! as NSData;
                    
                    //2. convert NSData into String
                    strImage = nsDataIMG.base64EncodedString(options: .lineLength64Characters);
                }
                
                //store
                let flag = database!.executeUpdate(query, withArgumentsIn: [meal.name,strImage,meal.rating]);
                
                os_log("store meal: \(flag)");
                
                let _ = close();
                
                return flag;
            }
        }
        
        os_log("cannot store");
        return false;
    }
    
    //2. all
    public func all(meals: inout [Meal]) {
        if open() , database!.tableExists(MEAL_TABLE_NAME) {
            let query = "SELECT * FROM \(MEAL_TABLE_NAME) ORDER BY \(MEAL_RATING)";
            
            var fmRS:FMResultSet?;
            
            do{
                fmRS = try database!.executeQuery(query, values: nil);
            } catch {
                os_log("cannot query")
            }
            
            if fmRS != nil {
                while fmRS!.next() {
                    let name = "";
                    let image = "";
                    let rating = 0;
//                    let meal = Meal(name: name, image: image, rating: rating);
//
//                    meals.append(meal);
                }
            }
            
            
        }
    }
    
}
