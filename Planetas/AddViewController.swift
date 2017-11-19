//
//  AddViewController.swift
//  Planetas
//
//  Created by Aplimovil on 16/10/17.
//  Copyright © 2017 Aplimovil. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet var name:UITextField!
    @IBOutlet var gravity:UITextField!
    
    var dao:PlanetaDao!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let db = (UIApplication.shared.delegate as! AppDelegate).db
        dao = PlanetaDao(db:db!)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func add(_ sender:UIButton){
        let planeta:Planeta = Planeta()
        planeta.nombre = name.text!
        planeta.gravity = Double(gravity.text!)        
        dao.insert(planeta: planeta)
        navigationController?.popViewController(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
