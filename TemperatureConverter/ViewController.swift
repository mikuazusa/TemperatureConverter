//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Tonny on 29/11/14.
//  Copyright (c) 2014 Tonny M. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var kelvinLabel: UILabel!
    @IBOutlet weak var temperatureSlider: UISlider!
    @IBOutlet weak var titleLabel: UILabel!
    
    func updateTemperatureDisplays(){
        // Define
        var C = self.temperatureSlider.value
        var F = (C * 9/5) + 32
        var K = C + 273.15
        // Change var
        self.celsiusLabel.text = String(format: "%.1f", C) + "°C"
        self.fahrenheitLabel.text = String(format: "%.1f", F) + "°F"
        self.kelvinLabel.text = String(format: "%.1f", K) + "K"
    }
    @IBAction func temperatureSliderChanged(sender: UISlider) {
        // TODO: read the current value of the slider and update the temperature displays
        self.updateTemperatureDisplays()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//        let screen = UIScreen.mainScreen()
//        // Always return the size of the screen in portraits orientation
//        println("screen fixed bounds: \(screen.fixedCoordinateSpace.bounds)")
//        // Since ios8, this is the size of the screen in its current orientation
//        println("screen bounds: \(screen.bounds)")
//        println("top layout guide: \(topLayoutGuide.length)")
//        // TODO: Calculate the title label's frame.
//        titleLabel.frame = CGRect(x: 16.0,y: topLayoutGuide.length + 16.0,width: screen.bounds.width-32,height: 21.0)
//    }

}

