//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Enes Kaya on 25.10.2023.
//

import UIKit

class ColorsTableVC: UIViewController {
 
    var colors: [UIColor] = []
    
    enum Cells {
        static let colorCell = "ColorCell"
    }
    
    enum Segues {
        static let roDetail = "ToColorsDetailVC"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        createRandomColors()
    }
    
    
    func createRandomColors() {
        for _ in 0..<50 {
            colors.append(.random())
        }
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailsVC
        destVC.color = sender as? UIColor
    }

}



extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else {
            print("Cellcouldn't create")
            return UITableViewCell()
        }
        
        let color = colors[indexPath.row]
        cell.backgroundColor = color
    
        return cell
       
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: Segues.roDetail, sender: color)
    }
}
