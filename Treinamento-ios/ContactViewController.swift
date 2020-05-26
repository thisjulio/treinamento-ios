//
//  ContactViewController.swift
//  Treinamento-ios
//
//  Created by Julio Cesar da Silva Pereira on 22/05/2020.
//  Copyright © 2020 Julio Cesar da Silva Pereira. All rights reserved.
//

import UIKit

class Contact {
    var name: String
    
    init(_ name: String) {
        self.name = name
    }
}

class ContactViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!

    private var contacts: [Contact] = [Contact("julio cesar da silva pereira")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func adicionar(_ sender: UIButton) {
        self.contacts.append(Contact("Test"))
        self.table.reloadData()
    }
    
    func remover(_ idx: Int) {
        self.contacts.remove(at: idx)
        self.table.reloadData()
    }
    
    // MARK: UITableViewDelegate
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Xubirubis") ?? UITableViewCell(style: .default, reuseIdentifier: "Xubirubis")
        
        cell.textLabel?.text = self.contacts[indexPath.row].name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        return UISwipeActionsConfiguration(actions: [
            UIContextualAction(style: .destructive, title: "Remover", handler: { (action, view, c) in
                self.remover(indexPath.row)
                c(true)
            }),
            UIContextualAction(style: .normal, title: "Info", handler: { (action, view, c) in
                print("Xablau...")
                c(true)
            })
        ])
    }
}
