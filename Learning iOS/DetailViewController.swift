//
//  DetailViewController.swift
//  Learning iOS
//
//  Created by Khaled Ahmed on 06/01/2023.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var textView: UITextView!
    var selectedNumber: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let numberToLoad = selectedNumber {
            textView.text = numberToLoad
        }
        navigationController?.navigationBar.prefersLargeTitles = true

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
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
