//  Comment+Properties.swift
//  POSTR2
//  Created by Winston Maragh on 2/12/18.
//  Copyright © 2018 On-The-Line. All rights reserved.

import Foundation
import CoreData
import UIKit

extension Comment {

//	convenience init(dict: [String : Any]) {
//		self.init(context: CoreDataService.context)
//		postID = dict["postID"] as? String ?? ""
//		userID = dict["userID"] as? String ?? ""
//		commentID = dict["commentID"] as? String ?? ""
//		commentStr = dict["commentStr"] as? String ?? ""
//		dateOfPost = dict["dateOfPost"] as? String ?? ""
//		commentFlagCount = dict["commentFlagCount"] as? Int16 ?? 0
//		username = dict["username"] as? String ?? ""
//		CoreDataService.saveContext()
//	}

	convenience init(postID: String, postCategory: String, postImageStr: String, postTitle: String, userID: String, username: String, commentID: String, commentStr: String, dateOfPost: String, commentFlagCount: Int16?) {
		self.init(context: CoreDataService.context)
		self.postID = postID ?? ""
		self.userID = userID ?? ""
		self.username = username ?? ""
		self.commentID = commentID ?? ""
		self.commentStr = commentStr ?? ""
		self.dateOfPost = dateOfPost ?? ""
		self.commentFlagCount = commentFlagCount ?? 0
		self.postCategory = postCategory ?? ""
		self.postImageStr = postImageStr ?? ""
		self.postTitle = postTitle ?? ""
		CoreDataService.saveContext()
	}

}
