//
//  main.swift
//  WORKXTest
//
//  Created by Cubik65536 on 2021-09-22.
//

import Foundation

func timerTest() {
    let fmt = ISO8601DateFormatter()

    let date1 = fmt.date(from: "2021-09-21T20:49:57+0000")!
    let date2 = fmt.date(from: "2021-09-22T20:49:59+0000")!

    let dateUtil = DateUtil()
    
    print(dateUtil.getTimeIntervalString(from: date1, to: date2))
    
}

timerTest()
