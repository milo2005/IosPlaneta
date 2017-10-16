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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func add(_ sender:UIButton){
        let planeta:Planeta = Planeta()
        planeta.nombre = name.text!
        planeta.gravity = Double(planeta.gravity!)
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