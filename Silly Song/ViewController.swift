//
//  ViewController.swift
//  Silly Song
//
//  Created by Legendary Wicho on 5/13/17.
//  Copyright © 2017 Digital Legwich. All rights reserved.
//

import UIKit


extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false;
    }
}


class ViewController: UIViewController {
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var lyricsView: UITextView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameField.delegate = self
     //   self.nameField.autocapitalizationType = .Words
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func reset(_ sender: Any) {
        nameField.text = "";
        lyricsView.text = "";
        
    }
    
    @IBAction func displayLyrics(_ sender: Any) {
        let name: String = nameField.text!;
        let carl:String = template(name: name);
        lyricsView.text = carl;
    }

   
}

func template(name: String)->String{
    let lol: String = cutName(carl: name);
    let carl: String = name+" "+name+" "+"Bo"+" B"+lol+" Banana Fana Fo F"+lol+" Me My Mo m"+lol+" "+name;
    print(carl);
    return  carl.lowercased();
}


func cutName(carl: String)-> String{
    var shortname: String = carl;
    
    var carl: String = String(shortname.characters.reversed());
    
    let  finalResult = String(carl.characters.suffix(3));
    
    return finalResult;
}





