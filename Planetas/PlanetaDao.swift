//
//  PlanetaDao.swift
//  Planetas
//
//  Created by Aplimovil on 18/10/17.
//  Copyright © 2017 Aplimovil. All rights reserved.
//

import Foundation
import Squeal

class PlanetaDao{
    
    var db:Database
    
    init(db:Database){
        self.db = db
        
        do{
            try db.createTable("planeta", definitions: [
                    "id INTEGER PRIMARY KEY AUTOINCREMENT",
                    "nombre TEXT",
                    "gravedad DOUBLE"
                ])
        }catch{}
        
    }
    
    func insert(planeta:Planeta){
        do{
            try db.insertInto("planeta", values: [
                    "nombre":planeta.nombre,
                    "gravedad":planeta.gravity
                ])
        }catch{}
    }
    
    func update(planeta:Planeta){
        
        do{
            try db.update("planeta", rowIds: [planeta.id], values: [
                    "nombre":planeta.nombre,
                    "gravedad":planeta.gravity
                ])
        }catch{}
        
    }
    
    
    func delete(id:Int64){
        do{
            try db.deleteFrom("planeta", rowIds: [id])
        }catch{}
    }
    
    func all()->[Planeta]{
        
        var data:[Planeta] = []
        do{
            data = try db.selectAll("SELECT * FROM planeta") { (stm) -> Planeta in
                let planeta = Planeta()
                planeta.id = stm.int64Value("id")
                planeta.nombre = stm.stringValue("nombre")
                planeta.gravity = stm.doubleValue("gravedad")
                return planeta
            }
        }catch{}
        return data
    }
    
}
