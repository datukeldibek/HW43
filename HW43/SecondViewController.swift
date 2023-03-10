//
//  SecondViewController.swift
//  HW43
//
//  Created by Jarae on 7/3/23.
//

import UIKit


class SecondViewController: UIViewController {

    
    @IBOutlet weak var likeBtn: UIButton!
    @IBOutlet weak var imgeView: UIImageView!
    @IBOutlet weak var nameLlb: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    
    
    @IBOutlet weak var starsContainer: UIView!
    
    
    @IBOutlet weak var roomTypeLbl: UILabel!
    @IBOutlet weak var colorLbl: UILabel!
    @IBOutlet weak var materialLbl: UILabel!
    @IBOutlet weak var dimensionLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    
    @IBOutlet weak var buyBtn: UIButton!
    
    @IBOutlet weak var minusBtn: UIButton!
    @IBOutlet weak var plusBtn: UIButton!
    @IBOutlet weak var countLbl: UILabel!
    
    var name: String = ""
    var price: String = ""
    var stars: Int = 0
    var image: String = ""
    
    var roomType: String = ""
    var color: String = ""
    var material: String = ""
    var dimension: String = ""
    var weight: String = ""
    
    
    private func setUpSubViews(){
        buyBtn.layer.cornerRadius = 16
        minusBtn.layer.cornerRadius = 16
        plusBtn.layer.cornerRadius = 16
        imgeView.image = UIImage(named: image)
        likeBtn.tintColor = UIColor.red
        
    }
    private func setCounter(count: Int){
        countLbl.text = String(count)
    }
    private func setStarts(){
        //star1.image = UIImage(systemName: "star")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSubViews()
        nameLlb.text = name
        priceLbl.text = price
        setStarts()
        
        roomTypeLbl.text = roomType
        colorLbl.text = color
        materialLbl.text = material
        dimensionLbl.text = dimension
        weightLbl.text = weight
    }
    
    @IBAction func minus(_ sender: Any) {
        var count: Int? = Int(countLbl.text ?? "0")
        if count! > 0 {
            count! -= 1
        }
        setCounter(count: count!)
    }
    @IBAction func plus(_ sender: Any) {
        var count: Int? = Int(countLbl.text ?? "0")
        count! += 1
        setCounter(count: count!)
    }
    var flag = false
    @IBAction func like(_ sender: Any) {
        if flag == false {
            likeBtn.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        }else{
            likeBtn.setImage(UIImage(systemName: "heart"), for: .normal)
        }
        flag == true ? (flag = false) : (flag = true)
        
    }
    
}
