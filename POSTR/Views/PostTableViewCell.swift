//
//  PostTableViewCell.swift
//  OnTheLine-FeedViewController
//
//  Created by Luis Calle on 1/29/18.
//  Copyright © 2018 Luis Calle. All rights reserved.
//

import UIKit
import SnapKit

class PostTableViewCell: UITableViewCell {
    
    lazy var postCaption: UILabel = {
        let label = UILabel()
        label.text = "Caption"
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        return label
    }()
    
    lazy var postImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "placeholderImage")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    lazy var postCategory: UILabel = {
        let label = UILabel()
        label.text = "Category"
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        return label
    }()
    
    lazy var dateLabel: UILabel = {
        let label = UILabel()
        label.text = "Date"
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        return label
    }()
    
    lazy var userImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "userImagePlaceholder")
        return imageView
    }()
    
    lazy var usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "Username"
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        return label
    }()
    
    lazy var upvoteButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "upvote"), for: .normal)
        button.backgroundColor = UIColor.clear
        return button
    }()
    
    lazy var voteCountLabel: UILabel = {
        let label = UILabel()
        label.text = "5"
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        return label
    }()
    
    lazy var downvoteButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "downvote"), for: .normal)
        button.backgroundColor = UIColor.clear
        return button
    }()
    
    lazy var postActionsButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "options"), for: .normal)
        button.backgroundColor = UIColor.clear
        return button
    }()
    
    lazy var numberOfCommentsLabel: UILabel = {
        let label = UILabel()
        label.text = "# of comments"
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        return label
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: "Post Cell")
        //postActionsButton.addTarget(self, action: #selector(showOptions), for: .touchUpInside)
        commonInit()
    }
    
//    @objc private func showOptions() {
//        var alertView = UIAlertController(title: "Options", message: "Choose Option", preferredStyle: .alert)
//        var editPostOption = UIAlertAction(title: "Edit Post", style: .default, handler: nil)
//        var deleteOption = UIAlertAction(title: "Delete Post", style: .default, handler: nil)
//        alertView.addAction(editPostOption)
//        alertView.addAction(deleteOption)
//        self.present(alertView, animated: true, completion: nil)
//    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = UIColor.groupTableViewBackground
        setupViews()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    private func setupViews() {
        setupPostCaption()
        setupPostActionsButton()
        setupUserImageView()
        setupUsernameLabel()
        setupDateLabel()
        setupPostCategory()
        setupNumberOfCommentsLabel()
        setupVoteCountLabel()
        setupUpvoteButton()
        setupDownvoteButton()
        setupPostImageView()
    }
    
    private func setupPostCaption() {
        addSubview(postCaption)
        postCaption.snp.makeConstraints { (make) in
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading).offset(8)
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(8)
        }
    }
    
    private func setupPostActionsButton() {
        addSubview(postActionsButton)
        postActionsButton.snp.makeConstraints { (make) in
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing).offset(-8)
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(8)
            make.height.equalTo(safeAreaLayoutGuide.snp.height).multipliedBy(0.1)
            make.width.equalTo(postActionsButton.snp.height)
        }
    }
    
    private func setupUserImageView() {
        addSubview(userImageView)
        userImageView.snp.makeConstraints { (make) in
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading).offset(8)
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(-8)
            make.height.equalTo(safeAreaLayoutGuide.snp.height).multipliedBy(0.1)
            make.width.equalTo(userImageView.snp.height)
        }
    }
    
    private func setupUsernameLabel() {
        addSubview(usernameLabel)
        usernameLabel.snp.makeConstraints { (make) in
            make.leading.equalTo(userImageView.snp.trailing).offset(4)
            make.bottom.equalTo(userImageView.snp.bottom)
        }
    }
    
    private func setupDateLabel() {
        addSubview(dateLabel)
        dateLabel.snp.makeConstraints { (make) in
            make.bottom.equalTo(userImageView.snp.top).offset(-4)
            make.leading.equalTo(userImageView.snp.leading)
        }
    }
    
    private func setupPostCategory() {
        addSubview(postCategory)
        postCategory.snp.makeConstraints { (make) in
            make.bottom.equalTo(dateLabel.snp.top).offset(-2)
            make.leading.equalTo(dateLabel.snp.leading)
        }
    }
    
    private func setupNumberOfCommentsLabel() {
        addSubview(numberOfCommentsLabel)
        numberOfCommentsLabel.snp.makeConstraints { (make) in
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing).offset(-8)
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(-8)
        }
    }
    
    private func setupVoteCountLabel() {
        addSubview(voteCountLabel)
        voteCountLabel.snp.makeConstraints { (make) in
            make.centerY.equalTo(safeAreaLayoutGuide.snp.centerY)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing).offset(-32)
        }
    }
    
    private func setupUpvoteButton() {
        addSubview(upvoteButton)
        upvoteButton.snp.makeConstraints { (make) in
            make.centerX.equalTo(voteCountLabel.snp.centerX)
            make.bottom.equalTo(voteCountLabel.snp.top).offset(-2)
            make.height.equalTo(safeAreaLayoutGuide.snp.height).multipliedBy(0.1)
            make.width.equalTo(upvoteButton.snp.height)
        }
    }
    
    private func setupDownvoteButton() {
        addSubview(downvoteButton)
        downvoteButton.snp.makeConstraints { (make) in
            make.centerX.equalTo(voteCountLabel.snp.centerX)
            make.top.equalTo(voteCountLabel.snp.bottom).offset(2)
            make.height.equalTo(safeAreaLayoutGuide.snp.height).multipliedBy(0.1)
            make.width.equalTo(downvoteButton.snp.height)
        }
    }
    
    private func setupPostImageView() {
        addSubview(postImageView)
        postImageView.snp.makeConstraints { (make) in
            make.centerX.equalTo(safeAreaLayoutGuide.snp.centerX)
            make.centerY.equalTo(safeAreaLayoutGuide.snp.centerY)
            make.height.equalTo(safeAreaLayoutGuide.snp.height).multipliedBy(0.6)
            make.width.equalTo(postImageView.snp.height)
        }
    }
    
}

