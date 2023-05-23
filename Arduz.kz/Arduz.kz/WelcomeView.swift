//
//  WelcomeView.swift
//  Arduz.kz
//
//  Created by bakebrlk on 23.05.2023.
//

import UIKit
import SnapKit

class WelcomeView: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        setup()
    }
    
    private var btn :UIButton = {
        let btn = btn(text: "Let’s start collecting", color: "white")
        return btn
    }()
    
    private var label: UILabel = {
        let label = UILabel()
        label.text = "Welcome to our Arbuz Store! \nDiscover a world of convenience."
        label.font = .boldSystemFont(ofSize: 32)
        label.textColor = .white
        label.numberOfLines = 0
        return label
    }()
    
    private var img : UIImageView = {
       let img = UIImageView(image: UIImage(named: "back"))
        return img
    }()
    
    private func setup(){
        view.addSubview(img)
        view.backgroundColor = UIColor(red: 234/256, green: 157/256, blue: 174/256, alpha: 1)
        
        
        view.addSubview(btn)
        setBtn(btn: btn)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.bottom.equalTo(btn.snp.top).offset(-16)
        }
        
        
        
    }
}
