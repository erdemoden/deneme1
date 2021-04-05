//
//  ViewController2.swift
//  deneme1
//
//  Created by erdem öden on 14.01.2021.
//  Copyright © 2021 erdem öden. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var kayitedilen: UILabel!
    @IBOutlet weak var gelentxt: UILabel!
    var yaz = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        gelentxt.text = yaz
        let kayited = UserDefaults.standard.object(forKey: "kayitet")
        if let dene = kayited as? String {
                kayitedilen.text = dene
        }
    }
    @IBAction func kayit(_ sender: Any) {
UserDefaults.standard.set(gelentxt.text!, forKey: "kayitet")
        let alert = UIAlertController(title: "Onay", message: "KAYIT BAŞARIYLA GERÇEKLEŞTİRİLDİ!", preferredStyle: UIAlertController.Style.alert)
        let button = UIAlertAction(title: "TAMAM", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(button)
        self.present(alert, animated: true, completion: nil)
        kayitedilen.text = gelentxt.text
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
