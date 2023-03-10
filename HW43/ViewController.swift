//
//  ViewController.swift
//  HW43
//
//  Created by Jarae on 7/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let productList: [Product] = [
        Product(id: 0, type: "Furniture", count: 785,
                details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair",
                                        roomType: "Office, Living Room",
                                        color: ".yellow" , material: "Textile, Velvet, Cotton",
                                        dimensions: "25.6 * 31.5 * 37.4 inches",
                                        weight: "20.3 Pounds", star: 5, price: "230 $", image: "first") ),
       Product(id: 0, type: "KitchenWare", count: 7251,
               details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair",
                                       roomType: "Office, Living Room",
                                       color: ".yellow" , material: "Textile, Velvet, Cotton",
                                       dimensions: "25.6 * 31.5 * 37.4 inches",
                                       weight: "20.3 Pounds", star: 5, price: "230 $", image: "second") ),
       Product(id: 0, type: "Reading Table", count: 7251,
               details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair",
                                       roomType: "Office, Living Room",
                                       color: ".yellow" , material: "Textile, Velvet, Cotton",
                                       dimensions: "25.6 * 31.5 * 37.4 inches",
                                       weight: "20.3 Pounds", star: 5, price: "230 $", image: "third") ),
       Product(id: 0, type: "Kitchen", count: 7251,
               details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair",
                                       roomType: "Office, Living Room",
                                       color: ".yellow" , material: "Textile, Velvet, Cotton",
                                       dimensions: "25.6 * 31.5 * 37.4 inches",
                                       weight: "20.3 Pounds", star: 5, price: "230 $", image: "fourth") ),
       Product(id: 0, type: "Kitchen", count: 7251,
               details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair",
                                       roomType: "Office, Living Room",
                                       color: ".yellow" , material: "Textile, Velvet, Cotton",
                                       dimensions: "25.6 * 31.5 * 37.4 inches",
                                       weight: "20.3 Pounds", star: 5, price: "230 $", image: "fifth") )
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        productList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.initUI(image: productList[indexPath.row].details.image, name: productList[indexPath.row].type, count: "\(productList[indexPath.row].count) item")
        return cell
    }
    
    
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        335
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = SecondViewController()
        vc.name = productList[indexPath.row].details.name
        vc.price = productList[indexPath.row].details.price
        vc.stars = productList[indexPath.row].details.star
        vc.image = productList[indexPath.row].details.image
        
        vc.roomType = productList[indexPath.row].details.roomType
        vc.color = productList[indexPath.row].details.color
        vc.material = productList[indexPath.row].details.material
        vc.dimension = productList[indexPath.row].details.dimensions
        vc.weight = productList[indexPath.row].details.weight
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
}

struct Product {
    let id: Int
    let type: String
    let count: Int
    let details: ProductDetails
}
struct ProductDetails {
    let name: String
    let roomType: String
    let color: String
    let material: String
    let dimensions: String
    let weight: String
    let star: Int
    let price: String
    let image: String
}


