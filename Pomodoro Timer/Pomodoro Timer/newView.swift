//
//  newView.swift
//  Pomodoro Timer
//
//  Created by Yessenali Zhanaidar on 10.12.2021.
//

import SwiftUI

struct newView: View {
    var body: some View {
        ZStack{
            Image("BG")
            ZStack{
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
                
                VStack{
                    ZStack{
                    Circle()
                        .fill(Color.gray.opacity(0.4))
                        .frame(width: 248, height: 250, alignment: .center)
                        VStack{
                            Text("25:00").foregroundColor(.init(red: 255, green: 255, blue: 255))
                                .font(.custom("SF Pro Display", size: 44))
                            Spacer().frame(height: 5)
                            Text("Focus on your task")
                                .foregroundColor(.init(red: 255, green: 255, blue: 255))
                                .font(.custom("SF Pro Display", size: 16))
                        }
                    
                    }
                    Spacer().frame(height: 60)
                    ZStack{
                        HStack{
                            ZStack{
                                Circle()
                        .fill(Color.gray.opacity(0.8))
                        .frame(width: 56, height: 56)
                            Image(systemName: "play")
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
                    Spacer().frame(height: 100)
                    }
                
                }
                
            
            }.edgesIgnoringSafeArea(.all)
    }
}

struct newView_Previews: PreviewProvider {
    static var previews: some View {
        newView()
    }
}
