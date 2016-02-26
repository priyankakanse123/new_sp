//
//  countryModel.swift
//  new_sp
//
//  Created by BridgeLabz on 19/02/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit

class countryModel: NSObject {
    
    let databasePath = "/Users/bridgelabz/Documents/new_sp/new_sp/Counrty.db"
    
    //fetch all countrynames
    func countryNames () -> [String]
    {
        var allCountryNames = [String]()
       
        let countryDB = FMDatabase(path: databasePath as String )
        print(countryDB)
        for var i = 1; i < 3; i++
        {
            print("\(i)")
            
            if countryDB.open() {
                let querySQL = "SELECT * FROM COUNTRYINFO  WHERE ID = \((i))"
                
                
                
                
                let results:FMResultSet? = countryDB.executeQuery(querySQL,
                    withArgumentsInArray: nil)
                
                if results?.next() == true
                {
                    let countryname : String =  (results?.stringForColumn("COUNTRYNAME"))!
                    //let countrycode : String =  (results?.stringForColumn("COUNTRYCODE"))!
                    
                    print("countryname" , countryname)
                    //print("contrycode " , countrycode)
                    allCountryNames.append(countryname)
                    
                    
                } else {
                    print("record not found")
                }
                countryDB.close()
            }   else {
                print("Error: \(countryDB.lastErrorMessage())")
            }
        }
      return allCountryNames
    }
    
    
    
    //find countrycode
    
    func findCountryCode (CountryName : String) -> String
    {
        var countryCode = String()
       let countryDB = FMDatabase(path: databasePath as String )
        if countryDB.open() {
            let querySQL = "SELECT COUNTRYCODE FROM COUNTRYINFO WHERE COUNTRYNAME = '\((CountryName))'"
            
            
            
            
            
            
            
            let results:FMResultSet? = countryDB.executeQuery(querySQL,
                withArgumentsInArray: nil)
            
            if results?.next() == true
            {
                //let countryname : String =  (results?.stringForColumn("COUNTRYNAME"))!
                countryCode =  (results?.stringForColumn("COUNTRYCODE"))!
                
                //print("countryname" , countryname)
                print("contrycode " , countryCode)
                
                
                
            } else {
                print("record not found")
            }
            countryDB.close()
        }   else {
            print("Error: \(countryDB.lastErrorMessage())")
        }
        
        
        print("countrycode in model" , countryCode)
      return countryCode
    }
    
    
    //save user's image
    
    
    func saveData()
    {
        
         var data = NSData()
        let contactDB = FMDatabase(path : databasePath as String)
        
        //insert an image
        let image = UIImage(named: "back.png")
        print(image)
        
        //convert an image into database NSdata()
        if let unwrappedImage = image
        {
            data = UIImagePNGRepresentation (unwrappedImage)!
            print("data" , data)

        
            // convert NSdata to baseEncodeng64
            
            let dataStr = data.base64EncodedStringWithOptions(NSDataBase64EncodingOptions.Encoding64CharacterLineLength)
            print("converted string" ,dataStr)
            
            // save into databse
            if contactDB.open()
            {
            
            
                //insert a query
                let insertQuery = "INSERT INTO USERINFO( USERIMAGE) VALUES('\((dataStr))')"
            
                let result = contactDB.executeUpdate(insertQuery, withArgumentsInArray: nil)
                if !result {
               
                print("Error: \(contactDB.lastErrorMessage())")
            } else {
                            }
        }
        else {
            print("Error: \(contactDB.lastErrorMessage())")
        }
        
        
    }
    

    }
    
    //fetch imageData from sqlite database
    func fetchData() -> UIImage
    {
        var decodedimage = UIImage()
        var imageDataString = String()
        let countryDB = FMDatabase(path: databasePath as String )
        if countryDB.open() {
            
            //insert a query to fetch imageStringData
            let querySQL = "SELECT   USERIMAGE FROM USERINFO WHERE ID = \((1))"
            
            let results:FMResultSet? = countryDB.executeQuery(querySQL,
                withArgumentsInArray: nil)
            
            if results?.next() == true
            {
                
                
                
                imageDataString = (results?.stringForColumn("USERIMAGE"))!
                
                //convert NSString back to NSdata
                let decodedData = NSData(base64EncodedString: imageDataString, options: NSDataBase64DecodingOptions.IgnoreUnknownCharacters)
                
                //convert NSdata back to the image
                decodedimage = UIImage(data: decodedData!)!
                print("retrieve image" , decodedimage)
                
            } else {
                        print("record not found")
                    }
            countryDB.close()
        }   else {
            print("Error: \(countryDB.lastErrorMessage())")
        }
        
       
        
        return decodedimage
        
    }

  

}
