// Playground - noun: a place where people can play

import UIKit


// 文字列 から NSDate
var date_string: String  = "1996-3-15 10:11:00"
var date_formatter: NSDateFormatter = NSDateFormatter()
date_formatter.locale     = NSLocale(localeIdentifier: "ja")
date_formatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
var change_date:NSDate = date_formatter.dateFromString(date_string)!

date_formatter.stringFromDate(change_date)

// NSDateから曜日

let weekdays: Array  = [nil, "日", "月", "火", "水", "木", "金", "土"]
let calender: NSCalendar = NSCalendar(calendarIdentifier: NSGregorianCalendar)
let comps: NSDateComponents = calender.components(NSCalendarUnit.YearCalendarUnit|NSCalendarUnit.MonthCalendarUnit|NSCalendarUnit.DayCalendarUnit|NSCalendarUnit.HourCalendarUnit|NSCalendarUnit.MinuteCalendarUnit|NSCalendarUnit.SecondCalendarUnit|NSCalendarUnit.WeekdayCalendarUnit, fromDate: change_date)

println("年 \(comps.year)")
println("月 \(comps.month)")
println("日 \(comps.day)")
println("時 \(comps.hour)")
println("分 \(comps.minute)")
println("秒 \(comps.second)")
println("曜 \(weekdays[comps.weekday])")

date_formatter.dateFormat = "yyyy年MM月dd日（\(weekdays[comps.weekday])） HH時mm分ss秒"
println(date_formatter.stringFromDate(change_date))













