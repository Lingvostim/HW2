//
//  ViewController.swift
//  HW2
//
//  Created by Kirill Ter on 25.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!

    @IBOutlet weak var orangeSignalView: UIView!
    @IBOutlet weak var greenSignalView: UIView!

    @IBOutlet weak var redSignalView: UIView!
    var signalViews: [UIView] = []
    var currentSignalIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        signalViews = [redSignalView, orangeSignalView, greenSignalView]

                // Выключаем все сигналы при запуске
                for signalView in signalViews {
                    signalView.alpha = 0.3
                    signalView.layer.cornerRadius = signalView.frame.size.width / 2
                }

                // Настраиваем кнопку
                startButton.layer.cornerRadius = 10
    }


    @IBAction func startButonTapped() {
        signalViews[currentSignalIndex].alpha = 0.3
                currentSignalIndex = (currentSignalIndex + 1) % signalViews.count
                signalViews[currentSignalIndex].alpha = 1.0

                // Меняем заголовок кнопки
                if currentSignalIndex == 0 {
                    startButton.setTitle("START", for: .normal)
                } else {
                    startButton.setTitle("NEXT", for: .normal)
                }
    }
}

