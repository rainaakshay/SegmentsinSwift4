//
//  ViewController.swift
//  Segments
//
//  Created by apple on 17/12/18.
//  Copyright © 2018 Seraphic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var segmentOutlet: UISegmentedControl!
    
    @IBOutlet weak var label: UILabel!
    @IBAction func segment(_ sender: Any) {
        switch segmentOutlet.selectedSegmentIndex
        {
        case 0:
            label.text = "First Segment Selected";
        case 1:
            label.text = "Second Segment Selected";
        default:
            break
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NotificationCenter.default.addObserver(self, selector: #selector(onDidReceiveData(_:)), name: didReceiveData, object: nil)
    }
    
    
    @objc func onDidReceiveData(_ notification:Notification) {
        // Do something now
        
    }

}
extension Notification.Name {
    static let didReceiveData = Notification.Name("didReceiveData")
    static let didCompleteTask = Notification.Name("didCompleteTask")
    static let completedLengthyDownload = Notification.Name("completedLengthyDownload")
}
