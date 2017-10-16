//
//  ViewController.swift
//  Planetas
//
//  Created by Aplimovil on 16/10/17.
//  Copyright © 2017 Aplimovil. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    var data:[Planeta] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - DataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:PlanetaTableViewCell = tableView.dequeueReusableCell(withIdentifier: "celda") as! PlanetaTableViewCell
        
        let planeta = data[indexPath.row]
        cell.name.text = planeta
        .nombre
        cell.gravity.text = "\(planeta.gravity)"
        return cell
    }


}

