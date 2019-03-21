//
//  UsersTVC.swift
//  IanCarlos210319TVD
//
//  Created by Universidad Politecnica de Gómez Palacio on 21/03/19.
//  Copyright © 2019 Universidad Politecnica de Gómez Palacio. All rights reserved.
//

import UIKit

class UsersTVC: UITableViewController
{
    let usernames: [String] = ["Ian", "Memo", "Felipe", "Alicia"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.usernames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userTVCell", for: indexPath) as! UserTVCell
        
        let username: String = self.usernames[indexPath.row]
        cell.lblUsername.text = username

        return cell
    }
}
