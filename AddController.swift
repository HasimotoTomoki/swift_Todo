//
//  AddController.swift
//  MyTodo
//
//  Created by 橋本智樹 on 2020/12/19.
//  Copyright © 2020 hasimoto　tomoki. All rights reserved.
//

import UIKit

var Todonakamikobetu = [String]() //Todoの内容を保存するための変数を作る

class AddController: UIViewController {
    
    @IBOutlet weak var TodoTextField: UITextField!
    
    @IBAction func TodoAddButton(_ sender: Any) {
        Todonakamikobetu.append(TodoTextField.text!) //クリックされたらTodoTextFieldに記述した内容がTodonakamikobetuに追加される
        TodoTextField.text = "" // 追加ボタンが押されたらフィールドを空にする
        UserDefaults.standard.set(Todonakamikobetu, forKey : "TodoList") //TodoListに永続的に記述したデータを保存
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
