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
            pickedAnswer = false
        }
        
        if pickedAnswer == checkAnswer(questionIndex: currentIndex) {
            totalScore = totalScore + 1
            scoreLabel.text = String(totalScore)
        }
        nextQuestion(ci: currentIndex)
        updateUI(ci: currentIndex)
        questionLabel.text = allQuestions.list[currentIndex].questionText
    }
    
    func updateUI(ci: Int) {
        progressLabel.text = "\(ci + 1) / 13"
        progressBar.frame.size.width = (view.frame.size.width/13) * CGFloat(ci + 1)
    }
    
    // Go to the next question and show alert if reach the end of the list
    func nextQuestion(ci: Int) {
        // Check to make sure we don't have index out of range
        if ci < (allQuestions.list.count - 1) {
            // Show the next question
            currentIndex = currentIndex + 1
        } else {
            self.startOver()
            totalScore = 0
            let alert = UIAlertController(title: "Awesome", message: "You've finished all the questions, do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertActoin) in
                
            })
            
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    // Return the value of the answer
    func checkAnswer(questionIndex: Int) -> Bool {
        return allQuestions.list[questionIndex].answer
    }
    
    // Start from the beginning of the list
    func startOver()  {
        currentIndex = 0
    }
}
