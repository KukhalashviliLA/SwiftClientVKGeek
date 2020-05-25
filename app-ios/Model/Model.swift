import UIKit

struct group {
    var name: String
    var description: String
    var avatarImg: UIImage
    var isLike: Bool
}

struct user {
    var name: String
    var avatar: UIImage
    var city: String
    var isLike: Bool
}

struct SectionFriend {
    var sectionName: String
    var frendStruct: [user]
}

struct oneNews {
    var author: String
    var date: String
    var authorImg: UIImage
    var newsText: String
    var newsImg: UIImage
    var isLike: Bool
    var isLikeCount: Int
    var discussionCount: Int
    var forwardCount: Int
}
