//
//  FirstViewController.swift
//  0826 Qna 3.0_island
//
//  Created by 李沐軒 on 2018/8/26.
//  Copyright © 2018年 李沐軒. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    var count = 0
    var questions: [Question] = [
                                 Question(question: "請問唐伯虎以西洋打擊樂器打動華夫人，最後終得順利成為書僮？", answer: "o"), 
                                 Question(question:"華安在華太師府的終身代號是1314?", answer: "x"), 
                                 Question(question: "對穿腸，綽號「對王之王」，名片上的職稱是七省文狀元兼參謀將軍？", answer: "o"),
                                 Question(question: "含笑半步顛是用蜂蜜,川貝,桔梗,加上清新白蓮配製而成", answer: "x"), 
                                 Question(question: "吃了一日喪命散的人，一天之內會武功全失，經脈逆流，胡思亂想而致走火入魔，最後會血管爆裂而死?", answer: "o"), 
                                 Question(question: "吃了含笑半步癲的人，絕對不能走半步路或是面露笑容？", answer: "o"), 
                                 Question(question: "唐伯虎的家傳絕學是情意綿綿劍？", answer: "x"), 
                                 Question(question: "唐伯虎用絕妙畫技將祝枝山的雙掌作樹、屁股變高樓大廈？", answer: "x")
                                 ]
    
    
    @IBOutlet weak var questionLable: UILabel!
    @IBOutlet weak var answerImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "island")!)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func answerButtonPressed(_ sender: Any) {
        showAnswer()
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        if count == 8 {
            count = 0
        }
        next()
    }
    
    
    func next() {
        questionLable.text = questions[count].question
        answerImageView.isHidden = true
        count += 1
        
    }
    
    
    func showAnswer() {
        answerImageView.isHidden = false
        if questions[count-1].answer == "o" {
            answerImageView.image = UIImage(named: "right")
        } else {
            answerImageView.image = UIImage(named: "wrong")
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
