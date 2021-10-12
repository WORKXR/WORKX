//
//  timer.swift
//  WORKX
//
//  Created by 吴子桐 on 21/9/2021.
//
//  Edit by Cubik65536 on 22/09/2021: Remove old timer, rename to DateUtil and add function for calculate time interval between dates
//

import Foundation

class DateUtil {
    func getTimeIntervalString(from: Date, to: Date) -> String {
        let diffComponents = Calendar.current.dateComponents([.day, .hour, .minute, .second], from: from, to: to)
        let day = diffComponents.day
        let hour = diffComponents.hour
        let minutes = diffComponents.minute
        let seconds = diffComponents.second
        return "\(day ?? 0) Day(s), \(hour ?? 0) Hour(s), \(minutes ?? 0) Minute(s), \(seconds ?? 0) Second(s)"
    }
}
