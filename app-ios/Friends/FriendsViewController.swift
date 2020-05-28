import UIKit

class FriendsViewController: UITableViewController {
    
    
    var searchController: UISearchController!
    var sectionFriend : [SectionFriend] = []
    var searhResult: [SectionFriend] = []
    var friendsTemp: [user] = []
    var temp: [user] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchController = UISearchController(searchResultsController: nil)
        tableView.tableHeaderView = searchController.searchBar
        searchController.searchResultsUpdater = self
        self.searchController.searchBar.placeholder = "Введите имя..."
        
        let sectionTitle = Array(Set(users.compactMap { $0.name.prefix(1) } )).sorted()
        print(sectionTitle)
        
        friendsTemp = users
        
        for j in 0...sectionTitle.count - 1
        {
            for i in 0...friendsTemp.count - 1
            {
                if (sectionTitle[j] == friendsTemp[i].name.prefix(1) && friendsTemp[i].name != "0")
                {
                    temp.append(friendsTemp[i])
                    friendsTemp[i].name = "0"
                }
            }
            
            let sectionFriendtemp = SectionFriend(sectionName: String(sectionTitle[j]), frendStruct: temp)
            sectionFriend.append(sectionFriendtemp)
            temp = []
        }
    }
    
    // MARK: - Table view data source
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        if(searchController.isActive){
            return searhResult.count
        } else {
            return sectionFriend.count
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?  {
        if(searchController.isActive){
            return searhResult[section].sectionName
        } else {
            return sectionFriend[section].sectionName
        }
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(searchController.isActive){
            return searhResult[section].frendStruct.count
        } else {
            return sectionFriend[section].frendStruct.count
        }
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "usersCell", for: indexPath) as! FriendsTableViewCell
        
        if(searchController.isActive){
            cell.nameFriend.text = searhResult[indexPath.section].frendStruct[indexPath.row].name
            cell.avatarFriend.image = searhResult[indexPath.section].frendStruct[indexPath.row].avatar
            cell.cityFriend.text = searhResult[indexPath.section].frendStruct[indexPath.row].city
            return cell
        } else {
            cell.nameFriend.text = sectionFriend[indexPath.section].frendStruct[indexPath.row].name
            cell.avatarFriend.image = sectionFriend[indexPath.section].frendStruct[indexPath.row].avatar
            cell.cityFriend.text = sectionFriend[indexPath.section].frendStruct[indexPath.row].city
            return cell
        }
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
//        let done = doneAction(at: indexPath)
        let like = likeAction(at: indexPath)
        return UISwipeActionsConfiguration (actions: [like])
//        return UISwipeActionsConfiguration (actions: [done, like])
    }
    
    
    
    // Ошибка при удалении друга, еще не разобрался
    
    //Удаление при движении
//    func doneAction(at indexPath: IndexPath) -> UIContextualAction {
//        let action = UIContextualAction(style: .destructive, title: "trash") { (action, view, completion) in
//            groups.remove(at: indexPath.row)
//            self.tableView.deleteRows(at: [indexPath], with: .automatic)
//            completion(true)
//        }
//        action.backgroundColor = .systemRed
//        action.image = UIImage(systemName: "trash")
//        return action
//    }
    
    
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

// Поиск
extension FriendsViewController: UISearchResultsUpdating  {
    
    func updateSearchResults(for searchController: UISearchController) {
        if let searchText2 = searchController.searchBar.text {
            filterContent(searchText: searchText2)
            tableView.reloadData()
        }
    }
    
    func filterContent(searchText: String) {
        var frendStructTemp: [user] = []
        searhResult = []

        for z in 0...sectionFriend.count - 1
        {
            for u in 0...sectionFriend[z].frendStruct.count - 1{
                let str1 = sectionFriend[z].frendStruct[u].name.lowercased()
                
                let str2 = searchText.lowercased()
                
                if ( str1.contains(str2)  ){
                    frendStructTemp.append(sectionFriend[z].frendStruct[u])
                }
            }
            if !frendStructTemp.isEmpty{
                let sectionFriendtemp = SectionFriend(sectionName: String(sectionFriend[z].sectionName), frendStruct: frendStructTemp)
                searhResult.append(sectionFriendtemp)
                frendStructTemp = []
            }
        }
    }
}
