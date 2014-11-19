//
//  InterfaceController.swift
//  CounterDemo WatchKit Extension
//
//  Created by Nicholas Hanan on 11/18/14.
//  Copyright (c) 2014 Wayne Media LLC. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var tally: WKInterfaceLabel!
    
    var count = 0
    
    
    @IBAction func decrement()
    {
        updateCounterByAddingNumber(-1)
    }
    
    @IBAction func increment()
    {
        updateCounterByAddingNumber(1)
    }
    
    func updateCounterByAddingNumber(num: Int)
    {
        count += num
        updateTally()
    }
    
    func updateTally()
    {
        tally.setText("\(count)")
    }

    override init(context: AnyObject?) {
        super.init(context: context)
        
        updateTally()
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        NSLog("%@ will activate", self)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        NSLog("%@ did deactivate", self)
        super.didDeactivate()
    }

}
