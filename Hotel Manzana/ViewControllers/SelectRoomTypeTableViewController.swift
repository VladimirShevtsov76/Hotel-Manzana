//
//  SelectRoomTypeTableViewController.swift
//  Hotel Manzana
//
//  Created by Vladimir Shevtsov on 03.12.2021.
//

import UIKit

class SelectRoomTypeTableViewController: UITableViewController {
    
    var delegate: SelectRoomTypeTableViewControllerDelegate?
    
    var roomType: RoomType?

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return RoomType.all.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell     = tableView.dequeueReusableCell(withIdentifier: "RoomTypeCell", for: indexPath)
        let roomType = RoomType.all[indexPath.row]
        
        cell.textLabel?.text        = roomType.name
        cell.detailTextLabel?.text  = "$ \(roomType.price)"
        cell.accessoryType          = roomType == self.roomType ? .checkmark : .none
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        roomType = RoomType.all[indexPath.row]
        delegate?.didSelect(roomType: roomType!)
        tableView.reloadData()
    }

    

}

protocol SelectRoomTypeTableViewControllerDelegate {
    func didSelect(roomType: RoomType)
}
