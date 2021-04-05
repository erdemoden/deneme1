//
//  ViewController.swift
//  deneme1
//
//  Created by erdem öden on 10.01.2021.
//  Copyright © 2021 erdem öden. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bunagore: UILabel!
    @IBOutlet weak var ortalagec: UIButton!
    @IBOutlet weak var zaman: UILabel!
    @IBOutlet weak var Gondertxt: UITextField!
    var gonderilecek = ""
    var timer = Timer()
    var counter = 10
    @IBOutlet weak var resim: UIImageView!
    
    @IBOutlet weak var resimac: UILabel!
    @IBAction func zamanbaslat(_ sender: Any) {
        if(!timer.isValid){
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector:#selector(baslat), userInfo: nil, repeats: true)}
    }
    @IBAction func gonderici(_ sender: Any) {
        gonderilecek = Gondertxt.text!
        performSegue(withIdentifier: "secondvc", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondvc"{
            let vcdestination = segue.destination as! ViewController2
            vcdestination.yaz = gonderilecek;
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        resimac.isUserInteractionEnabled=true;
        let gesturerecognizer = UITapGestureRecognizer(target: self, action:#selector(basmatik));
        resimac.addGestureRecognizer(gesturerecognizer);
    }
    override func viewDidLayoutSubviews() {
       //onemli
    }
    @objc func baslat (){
        zaman.text = "TIME:"+String(counter)
        counter = counter-1
        if(counter == -1){
            zaman.text = "Bitti!";
            counter = 10;
            timer.invalidate()
        }
    }
    @objc func basmatik(){
         print("tapped");
        resim.image = UIImage(named:"mirket");
    }

}

