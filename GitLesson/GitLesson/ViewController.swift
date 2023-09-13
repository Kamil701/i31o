//
//  ViewController.swift
//  GitLesson
//
//  Created by Kamil Vakhobov on 13.09.23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hello Git!")
        print("Hello Git2!")
        print("Hello Git3!")
        view.backgroundColor = .white
    }
    
    private lazy var textLabel: UILabel = {
        let label = UILabel()
        label.text = "Hi conflict"
        return label
    }()
    
    private func makeLayout() {
        view.addSubview(textLabel)
    }
    
    private func makeConstraints() {
        textLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
        }
    }


}

