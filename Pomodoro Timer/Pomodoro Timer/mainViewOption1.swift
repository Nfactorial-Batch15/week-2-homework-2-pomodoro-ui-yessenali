//
//  mainViewOption1.swift
//  Pomodoro Timer
//
//  Created by Yessenali Zhanaidar on 10.12.2021.
//

import SwiftUI

struct mainViewOption1: View {
    @State var progressValue: Float = 0.0
    var body: some View {
        ZStack{
                Image("BG")
                .resizable()
                .ignoresSafeArea()
            VStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 20).fill(Color.gray.opacity(0.5))
                            .frame(width: 170, height: 36)
                        HStack{
                            Image("Vector")
                            Text("Focus Category")
                                .foregroundColor(.white)
                                .font(.custom(
                                    "SF Pro Display", size: 14))
                        }
                    }
                    Spacer().frame(height: 600)
                }
                
    // category
            
            VStack{
                ZStack{
                ProgressBar2(progress: self.$progressValue)
                    .frame(width: 248, height: 248, alignment:  .center)
                    .padding(20.0).onAppear() {
                        self.progressValue = 0.10
                        }
                VStack{
                    Text("24:32").foregroundColor(.init(red: 255, green: 255, blue: 255))
                        .font(.custom("SF Pro Display", size: 44))
                    Spacer().frame(height: 5)
                    Text("Focus on your task")
                        .foregroundColor(.init(red: 255, green: 255, blue: 255))
                        .font(.custom("SF Pro Display", size: 16))
                        }
                }
                Spacer().frame(height: 180)
            }
    // circle
                
                VStack{
                    Spacer().frame(height: 250)
                    HStack{
                        ZStack{
                            Circle()
                                .fill(Color.gray.opacity(0.8))
                                    .frame(width: 56, height: 56)
                            Image(systemName: "pause.fill")
                                    .foregroundColor(.white)
                            }
                            Spacer().frame(width: 80)
                        ZStack{
                            Circle()
                                .fill(Color.gray.opacity(0.8))
                                    .frame(width: 56, height: 56)
                            VStack{
                                Image(systemName: "stop.fill")
                                        .foregroundColor(.white)
                                }
                        }
                    }
                    
                }
            // play%stop
        }
    }
}


struct ProgressBar2: View {
    
    @Binding var progress: Float
    var color: Color = Color.white
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 8)
                .opacity(0.3)
                .foregroundColor(Color.gray)
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 7.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(color)
                . rotationEffect(Angle(degrees: 270))
            }
        }
    }


struct mainViewOption1_Previews: PreviewProvider {
    static var previews: some View {
        mainViewOption1()
    }
}
