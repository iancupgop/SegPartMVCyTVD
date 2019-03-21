//
//  UserVC.swift
//  IanCarlos210319TVD
//
//  Created by Universidad Politecnica de Gómez Palacio on 21/03/19.
//  Copyright © 2019 Universidad Politecnica de Gómez Palacio. All rights reserved.
//

import UIKit

class UserVC: UIViewController
{
    var users: [User] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.setUserDefault()
    }
    
    func setUserDefault()
    {
        self.users.append(User(firstName: "Ian", lastName: "Carlos"))
        self.users.append(User(firstName: "Guillermo", lastName: "Segovia"))
        self.users.append(User(firstName: "Pedro", lastName: "Pérez"))
        self.users.append(User(firstName: "Alicia", lastName: "Zamora"))
        self.users.append(User(firstName: "Felipe", lastName: "Rodarte"))
    }
}

extension UserVC: UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userTVCell", for: indexPath) as! UserTVCell
        
        let user: User = self.users[indexPath.row]
        cell.lblUsername.text = "\(user.firstName!) \(user.lastName!)"
        
        return cell
    }
}

extension UserVC: UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        print("didSelectRowAt.indexPath.row \(indexPath.row)")
    }
}
