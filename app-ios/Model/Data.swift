
import UIKit

var groups = [
    group(name: "Телемаркет", description: "продажа смартфонов по низким ценам", avatarImg: UIImage(named: "tm")!, isLike: false),
    group(name: "Мега-Спорт", description: "Спорт товары", avatarImg: UIImage(named: "sport")!, isLike: false),
    group(name: "Beeline", description: "Гиги за шаги", avatarImg: UIImage(named: "beeline")!, isLike: false),
]

var allGroups = [
       group(name: "Музыка", description: "описание группы", avatarImg: UIImage(named: "gigi")!, isLike: false),
       group(name: "Приколы", description: "описание группы", avatarImg: UIImage(named: "gigi")!, isLike: false),
       group(name: "Фильмы", description: "описание группы", avatarImg: UIImage(named: "gigi")!, isLike: false),
       group(name: "MDK", description: "описание группы", avatarImg: UIImage(named: "gigi")!, isLike: false),
   ]


var users = [
    user(name: "Артур Пирожков", avatar: UIImage(named: "gigi")!, city: "Москва", isLike: true),
    user(name: "Юлия Сидорова", avatar: UIImage(named: "stepanenko")!, city: "Уренгой", isLike: false),
    user(name: "Иван Охлобыстин", avatar: UIImage(named: "user1")!, city: "Нягань", isLike: false),
    user(name: "Марина Иванова", avatar: UIImage(named: "user2")!, city: "Воркута", isLike: false),
    user(name: "Михаил Бублик", avatar: UIImage(named: "user3")!, city: "Санкт-Петербург", isLike: false),
    user(name: "Олег Бамбук", avatar: UIImage(named: "user3")!, city: "Санкт-Петербург", isLike: false),
    user(name: "Василий Алибабаевич", avatar: UIImage(named: "alibabaevich")!, city: "Волгоград", isLike: false)
]

//let image = UIImage(named: "gigi")!

let frend = ["Photo1", "Photo2", "Photo3", "Photo4", "Photo5", "Photo6", "Photo7", "user1", "user2", "user3"]


let arrName = ["А","Ю", "И", "М","В"].sorted()

//при попытки получить массиы только с теми буквами которые нужны возникает ошибка: Expressions are not allowed at the top level
//let tempArr = Array(Set(users.compactMap { $0.name.prefix(1) } )).sorted()
//arrName = tempArr
//print(tempArr)







