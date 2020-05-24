
import UIKit

class GroupsViewController: UITableViewController {
    
    @IBAction func addGrope(_ sender: UIBarButtonItem){
        groups.append(group(name: "Умники", description: "Умники и Умницы", avatarImg: UIImage(named: "temp")!, isLike: false))
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem = self.editButtonItem
        
    }
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    // кол-во row
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return groups.count
    }
    
    //вызываем строки с данными
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groupsCell", for: indexPath) as! GroupsTableViewCell
        let odject = groups[indexPath.row]
        cell.set(odject: odject)
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            groups.remove(at: indexPath.row)
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
        let moveGroup = groups.remove(at: sourceIndexPath.row)
        //Вставляем в новое место
        groups.insert(moveGroup, at: destinationIndexPath.row)
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
            groups.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .automatic)
            completion(true)
        }
        action.backgroundColor = .systemRed
        action.image = UIImage(systemName: "trash")
        return action
    }
    // Лайк
    func likeAction (at indexPath: IndexPath) -> UIContextualAction {
        var object = groups[indexPath.row]
        let action = UIContextualAction(style: .normal, title: "like") { (action, view, completion) in
            object.isLike = !object.isLike
            groups[indexPath.row] = object
            completion(true)
        }
        action.backgroundColor = object.isLike ? .systemGreen : .systemGray
        action.image = UIImage(systemName: "suit.heart")
        
        return action
    }
    
    @IBAction func addGroup(segue: UIStoryboardSegue) {
        
        
        
        if segue.identifier == "addGroup" {
            let searchGroupsViewController = segue.source as! SearchGroupsTableViewController
            if let indexPath = searchGroupsViewController.tableView.indexPathForSelectedRow {
                let groupT = allGroups[indexPath.row]
                if !groups.contains(where: { $0.name == groupT.name}){
                    groups.append(groupT)
                }
                    tableView.reloadData()
                }
            }
        }
    
}
