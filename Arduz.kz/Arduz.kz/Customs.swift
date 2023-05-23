//
//  Customs.swift
//  Arduz.kz
//
//  Created by bakebrlk on 23.05.2023.
//


import UIKit
import SnapKit


func btn(text: String, color: String) -> UIButton{
    let btn = UIButton()
    btn.setTitle(text, for: .normal)
    btn.backgroundColor = UIColor(named: color)
    
    if(color == "white"){
        btn.setTitleColor(.black, for: .normal)
    }else{
        btn.setTitleColor(.white, for: .normal)
    }
    
    return btn
}

func setBtn(btn: UIButton){
    btn.translatesAutoresizingMaskIntoConstraints = false
    btn.layer.cornerRadius = 16
    btn.snp.makeConstraints { make in
        make.height.equalTo(56)
        make.leading.equalToSuperview().offset(16)
        make.trailing.equalToSuperview().offset(-16)
        make.bottom.equalToSuperview().offset(-32)
    }
}
