//
//  workingdata.swift
//  Engage
//
//  Created by william Vise on 2/4/21.
//

import Foundation
import UIKit
// stores the "at a momment" data needed for the operation of the app, is callable at any point and can be set at any time, insecure dont store creds
struct workingdata {
    static var doc = 1
    static var template = 0
    static var templatename = "none set"
    static var templateset = false
    static var qlist = [String]()
    static var alist = NSMutableArray()
    static var qtype = [Int]()
    
    
    var fsa = fsatemp()            // hardcoded, to be replaced
    var temple = templates()
    
    func templateset(templateid:Int) {
        workingdata.template = templateid
        switch workingdata.template {
        case 0:
            print("DOCTYPE is FSA151")
            workingdata.templatename = "FSA-151"
            workingdata.templateset = true
            workingdata.qlist =  temple.Getquestions(tempid: templateid)
            workingdata.qtype = temple.Getanswers(tempid: templateid)
        default:
            print("Theres somthing wrong with your templates")
        }
    }
    static func wipeout() {
        
    }
}
