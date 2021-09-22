//
//  timer.swift
//  WORKX
//
//  Created by 吴子桐 on 21/9/2021.
//

//原作者注释,请保留##############
//
//  ContentView.swift
//  count-up-timer
//
//  Created by Maegan Wilson on 4/28/20.
//  Copyright © 2020 Maegan Wilson. All rights reserved.
//
//############################

import SwiftUI
 
struct timer: View {
  
  @State var hours: Int = 0 //时
  @State var minutes: Int = 0 //分
  @State var seconds: Int = 0 //秒
  @State var timerIsPaused: Bool = true //是否停止计时
  
  @State var timer: Timer? = nil //将时间初始化为空
  
  var body: some View {
    VStack {
      Text("\(hours):\(minutes):\(seconds)") //按时分秒顺序显示
      if timerIsPaused {
        HStack {
          Button(action:{
            print("重新计时")
          }){
            Image(systemName: "backward.end.alt") //调用SF图标
              .padding(.all)
          }
          .padding(.all)
          Button(action:{
            self.startTimer() //调用开始计时函数
            print("开始计时")
          }){
            Image(systemName: "play.fill") //调用SF图标
              .padding(.all)
          }
          .padding(.all)
        }
      } else {
        Button(action:{
          print("停止计时")
          self.stopTimer()
        }){
          Image(systemName: "stop.fill") //调用SF图标
            .padding(.all)
        }
        .padding(.all)
      }
    }
  }
  
//开始计时函数
  func startTimer(){
    timerIsPaused = false //是否开始计时
    timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true){ tempTimer in //调用系统计时器函数
      if self.seconds == 59 {
        self.seconds = 0
        if self.minutes == 59 {
          self.minutes = 0
          self.hours = self.hours + 1
        } else {
          self.minutes = self.minutes + 1
        }
      } else {
        self.seconds = self.seconds + 1
      }
    }
  }     //时间进制设置(60进制)
  
//停止计时函数
  func stopTimer(){
    timerIsPaused = true //将停止计时设定为真
    timer?.invalidate()
    timer = nil
  }
}
 
//显示视图
struct timer_Previews: PreviewProvider {
  static var previews: some View {
    timer()
  }
}
