//
//  NextTableCell.swift
//  UITableViewInsideUITableViewCell
//
//  Created by Shantaram K on 02/10/20.
//  Copyright © 2020 Shantaram Kokate. All rights reserved.
//

import UIKit

class NextTableCell: UITableViewCell {
    @IBOutlet var tableView: OwnTableView!
    @IBOutlet var cellContainerView: UIView!
    @IBOutlet var button: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
        setupView()
        configureView()
        configureButton()
     }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension NextTableCell {
    func setupView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(UINib(nibName: "InfoCell", bundle: Bundle.main), forCellReuseIdentifier: "InfoCell")
        tableView.backgroundColor = UIColor.white
        tableView.separatorStyle = .singleLine
    }

    func configureView() {
        cellContainerView.layer.cornerRadius = 8
        cellContainerView.layer.borderColor = UIColor.gray.cgColor
        cellContainerView.layer.borderWidth = 2.0
    }

    func configureButton() {
        button.layer.maskedCorners = [.layerMinXMaxYCorner , .layerMaxXMaxYCorner]
        button.clipsToBounds = true
        button.layer.cornerRadius = 8

    }
}

extension NextTableCell: UITableViewDelegate {

}

extension NextTableCell: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
         return UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InfoCell", for: indexPath) as! InfoCell
        cell.layoutIfNeeded()
        
        return cell
    }
}
