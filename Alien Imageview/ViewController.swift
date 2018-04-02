//
//  ViewController.swift
//  Alien Imageview
//
//  Created by D7702_10 on 2018. 4. 2..
//  Copyright © 2018년 jik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 1; //사진의 인덱스 값 증가
    var direction = 1; //증가나 감소 여부
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var index: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 첫번째 이미지를 로드함.
        myImageView.image = UIImage(named: "frame1.png")
        index.text = "1"
        
    }

    @IBAction func imageUpdate(_ sender: Any) {
      
        if counter == 5{
            direction = 0
        }
        
        //counter가 5이면 감소시키기 위해 direction을 0으로 변경
            
        else if counter == 1{
            direction = 1
        }
      
        //counter가 1이면 증가시키기 위해 direction을 1으로 변경 라이트 방향
        
        if  direction == 1{
        counter += 1;}
            
        //direction이 1이면 counter를 1씩 증가
            
        else if direction == 0{
            counter = counter - 1
        }
        //direction이 0이면 counter를 1씩 감소 레프트 방향
        
        myImageView.image = UIImage(named: "frame\(counter).png")
        index.text = String(counter)
}
    
}
