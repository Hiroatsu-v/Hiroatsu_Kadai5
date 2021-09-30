//
//  ViewController.swift
//  Kadai5
//
//  Created by Hiroatsu on 2021/09/30.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var leftTextFiled: UITextField!
    @IBOutlet private weak var rightTextFiled: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction private func calculateButton(_ sender: UIButton) {
        // nilチェックしながらアンラップ
        guard let leftNumber = Double(leftTextFiled.text!) else {
            addAlert(message: "割られる数を入力して下さい")
            return
        }
        guard let rightNumber = Double(rightTextFiled.text!) else {
            addAlert(message: "割る数を入力して下さい")
            return
        }
        guard rightNumber != 0 else {
            addAlert(message: "割る数に0を入力しないで下さい")
            return
        }
        // 計算処理
        let resultNumber = String(leftNumber / rightNumber)
        resultLabel.text = resultNumber
    }
    // AlertController
    private func addAlert(message: String) {
        let alertController = UIAlertController(title: "課題5", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
}
