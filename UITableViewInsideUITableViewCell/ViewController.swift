//
//  ViewController.swift
//  UITableViewInsideUITableViewCell
//
//  Created by Shantaram K on 02/10/20.
//  Copyright © 2020 Shantaram Kokate. All rights reserved.
//https://github.com/mkaczmarek93/swift-table-in-table

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: OwnTableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
        tableView.reloadData()

         view.backgroundColor = UIColor.white
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

extension ViewController {
    func setupView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(UINib(nibName: "NextTableCell", bundle: Bundle.main), forCellReuseIdentifier: "NextTableCell")
        tableView.backgroundColor = UIColor.white
    }
}

extension ViewController: UITableViewDelegate {

}

extension ViewController: UITableViewDataSource {
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "NextTableCell", for: indexPath) as! NextTableCell
        cell.layoutIfNeeded()
          return cell
    }

    func updateHeight() {
        UIView.setAnimationsEnabled(false)
        tableView.beginUpdates()
        tableView.endUpdates()
        UIView.setAnimationsEnabled(true)
    }
}
