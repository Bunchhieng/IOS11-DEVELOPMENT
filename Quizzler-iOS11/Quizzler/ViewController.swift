//
//  ViewController.swift
//  Quizzler
//
//  Created by Soth, Bunchhieng on 11/13/17.
//  Copyright © 2017 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestions = QuestionBank()
    var pickedAnswer: Bool = false
    var currentIndex: Int = 0
    var totalScore: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstQuestion = allQuestions.list[currentIndex]
        questionLabel.text = firstQuestion.questionText
        scoreLabel.text = String(0)
    }

    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = true
        }
        
        currentIndex = currentIndex + 1
        if pickedAnswer == checkAnswer(questionIndex: currentIndex) {
            nextQuestion(currentIndex: currentIndex)
            totalScore += 1
            scoreLabel.text = String(totalScore)
        }
        nextQuestion(currentIndex: currentIndex)
    }
    
    func updateUI() {
      
    }
    
    func nextQuestion(currentIndex: Int) {
        if currentIndex < (allQuestions.list.count - 1) {
            let nextIndex = currentIndex + 1
            questionLabel.text = allQuestions.list[nextIndex].questionText
        }
        startOver(index: currentIndex)
    }
    
    func checkAnswer(questionIndex: Int) -> Bool {
        return allQuestions.list[questionIndex].answer
    }
    
    func startOver(index: Int)  {
        if index == (allQuestions.list.count - 1) {
            currentIndex = 0
            questionLabel.text = allQuestions.list[currentIndex].questionText
        }
    }
}
