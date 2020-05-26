
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

let frend = ["Photo1", "Photo2", "Photo3", "Photo4", "Photo5", "Photo6", "Photo7", "user1", "user2", "user3"]


var news = [
    oneNews(author: "Артур Пирожков", date: "01-05-2020", authorImg: UIImage(named: "gigi")!, newsText: "Создать экран новостей. Добавить туда таблицу и сделать ячейку для новости. Ячейка должна содержать то же самое, что и в оригинальном приложении «ВКонтакте»: надпись, фотографии, кнопки «Мне нравится», «Комментировать», «Поделиться» и индикатор количества просмотров. Сделать поддержку только одной фотографии, которая должна быть квадратной и растягиваться на всю ширину ячейки. Высота ячейки должна вычисляться автоматически", newsImg: UIImage(named: "temp")!, isLike: false, isLikeCount: 26, discussionCount: 74, forwardCount: 39),
    oneNews(author: "Юлия Сидорова", date: "02-05-2020", authorImg: UIImage(named: "stepanenko")!, newsText: "Власти Москвы планируют смягчение ограничений", newsImg: UIImage(named: "user3")!, isLike: false, isLikeCount: 34, discussionCount: 56, forwardCount: 15),
    oneNews(author: "Юлия Сидорова", date: "03-05-2020", authorImg: UIImage(named: "alibabaevich")!, newsText: "24 мая в Минобрнауки сообщили, что зачисление в вузы в этом году планируется провести в августе, после того как все выпускники сдадут школьные выпускные экзамены. 21 мая президент России Владимир Путин предложил начать проведение ЕГЭ с 29 июня.", newsImg: UIImage(named: "user1")!, isLike: false, isLikeCount: 87, discussionCount: 34, forwardCount: 56)
]
