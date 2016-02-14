//
//  ViewController.swift
//  GettingStartedWithJSON2
//
//  Created by Syed Askari on 14/02/2016.
//  Copyright © 2016 Syed Askari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let webaddress = "http://swapi.co/api/people/1/"
        let url = NSURL(string: webaddress)!
        getJSON(url)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getJSON(url: NSURL){
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithURL(url) { (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
            if let data = data {
                do {
                    let json = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments)
                    if let dict = json as? Dictionary<String, AnyObject> {
                        //print("we are Here:\(dict.debugDescription)")
                        if let name = dict["name"] as? String, let hair = dict["hair_color"] as? String, let birth = dict["birth_year"] as? String, let height = dict["height"] as? String {
                            let person = SWPersons(name: name, hairColour: hair, birthYear: birth, height: height)
                            print(person.name)
                            print(person.height)
                            print(person.hairColour)
                            print(person.birthYear)
                        }
                    }
                    //print(json)
                } catch {
                    print("error")
                }
            }
        }
        task.resume()
    }


}

