import UIKit

class FriendsViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return arrName.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrName[section]
    }
    
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return arrName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var userRow = [user]()
        
        for user in users {
            if arrName[section].contains(user.name.first!) {
            userRow.append(user)
            }
        }
        
        
        return userRow.count
    }
    
    func sectionTitle () {
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "usersCell", for: indexPath) as! FriendsTableViewCell
        
        var userRow = [user]()
        
        for user in users {
            if arrName[indexPath.section].contains(user.name.first!) {
            userRow.append(user)
            }
        }
        
        cell.nameFriend.text = userRow[indexPath.row].name
        cell.cityFriend.text = userRow[indexPath.row].city
        // не работает стока ниже не могу понять почему
        cell.avatarControl.avatar.image = userRow[indexPath.row].avatar
        return cell
    }
    
    
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            users.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
    // Включаем перемещение при нажатии редактирования
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    
    //Перемещаем элемент при включенном редактировании
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        //Удаляем элемент с предыдущего места
        let moveGroup = users.remove(at: sourceIndexPath.row)
        //Вставляем в новое место
        users.insert(moveGroup, at: destinationIndexPath.row)
        //Перегружаем
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let done = doneAction(at: indexPath)
        let like = likeAction(at: indexPath)
        return UISwipeActionsConfiguration (actions: [done, like])
    }
    
    //Удаление при движении
    func doneAction(at indexPath: IndexPath) -> UIContextualAction {
        let action = UIContextualAction(style: .destructive, title: "trash") { (action, view, completion) in
            users.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .automatic)
            completion(true)
        }
        action.backgroundColor = .systemRed
        action.image = UIImage(systemName: "trash")
        return action
    }
    // Лайк
    func likeAction (at indexPath: IndexPath) -> UIContextualAction {
        var object = users[indexPath.row]
        let action = UIContextualAction(style: .normal, title: "like") { (action, view, completion) in
            object.isLike = !object.isLike
            users[indexPath.row] = object
            completion(true)
        }
        action.backgroundColor = object.isLike ? .systemGreen : .systemGray
        action.image = UIImage(systemName: "suit.heart")
        
        return action
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "friend" {

    
        
    }
        
    }


}
