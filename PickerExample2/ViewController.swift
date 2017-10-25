//
//  ViewController.swift
//  PickerExample2
//
//  Created by agreyson on 10/25/17.
//  Copyright © 2017 agreyson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    let colors = ["red", "yellow", "green", "blue"]
    let shapes = ["0", "1", "2"]
    @IBOutlet weak var pickerThingy: UIPickerView!
    @IBOutlet weak var mySegmentedController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pickerThingy.delegate = self
        pickerThingy.dataSource = self
        
        mySegmentedController.setTitle("light", forSegmentAt: 0)
        mySegmentedController.setTitle("dark", forSegmentAt: 1)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return colors.count
        } else {
            return shapes.count
        }
    }
 
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return colors[row]
        } else {
            return shapes[row]
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Segue")
        //let choice = mySegmentedController.selectedSegmentIndex
        //sender.setTitle(mySegmentedController.titleForSegment(at: choice), for: UIControlState.normal)
        
        //let month = pickerThingy.selectedRow(inComponent: 0)
        //let day = pickerThingy.selectedRow(inComponent: 1)
        //let dayOfWeek = game.findDay(month, date: day)
        //sender.setTitle(colors[pickerThingy.selectedRow(inComponent: 0)], for: UIControlState.normal)
    }
    
    
    
    @IBAction func sillyButton(_ sender: UIButton) {
        print("Action")
    }
    
}













