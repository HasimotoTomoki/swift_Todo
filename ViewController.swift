//
//  ViewController.swift
//  MyTodo
//
//  Created by 橋本智樹 on 2020/12/19.
//  Copyright © 2020 hasimoto　tomoki. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Todonakamikobetu.count //　セクションの中にTodonakamikobetuが何個あるか返す
    }
    //表示するセルの中身を決める
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //　変数を作る
        let TodoCell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath) //スクロールした時cellの再利用設定
        TodoCell.textLabel?.text = Todonakamikobetu[indexPath.row] // Addcontrollerで入力し追加したものがセルに表示される
        return TodoCell // 表示する中身
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            print("TodoList")
            Todonakamikobetu.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath as IndexPath], with: UITableView.RowAnimation.automatic)
            // 削除した内容を保存
            UserDefaults.standard.object(forKey: "TodoList")
        }
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserDefaults.standard.object(forKey: "TodoList") != nil { //起動したときにTodoListにデータがnilではない時の処理
            Todonakamikobetu = UserDefaults.standard.object(forKey: "TodoList") as! [String] //TodoListの中のデータをTodonakamikobetuの中に入れる
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}



