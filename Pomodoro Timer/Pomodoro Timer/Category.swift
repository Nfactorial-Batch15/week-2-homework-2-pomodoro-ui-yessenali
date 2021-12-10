//
//  Category.swift
//  Pomodoro Timer
//
//  Created by Yessenali Zhanaidar on 10.12.2021.
//

import SwiftUI

struct CategoryView: View {
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
                ProgressBar4(progress: self.$progressValue)
                    .frame(width: 248, height: 248, alignment:  .center)
                    .padding(20.0).onAppear() {
                        self.progressValue = 0.0
                        }
                VStack{
                    Text("04:48").foregroundColor(.init(red: 255, green: 255, blue: 255))
                        .font(.custom("SF Pro Display", size: 44))
                    Spacer().frame(height: 5)
                    Text("break")
                        .foregroundColor(.init(red: 255, green: 255, blue: 255))
                        .font(.custom("SF Pro Display", size: 16))
                        }
                }
                Spacer().frame(height: 180)
            }
    // circle
                
            VStack{
                Spacer().frame(height: 470)
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white)
                        VStack{
                            VStack{
                                HStack{
                                Text("Focus Category")
                                    .font(.body)
                                    .padding(.leading, 145)
                                Spacer()
                                Image(systemName: "xmark")
                                    .padding(.trailing, 30)
                                }
                            }
                            Spacer().frame(height: 40)
                            VStack{
                                
                                blockGrid.font(.body)
                                    
                            }.padding(.horizontal, 16)
                        }.frame(height: 360)
    // Grid
                    }
                }
            }
        }
    }
struct ProgressBar4: View {
    
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


var blockGrid: some View {
    ZStack{
    VStack{
    VStack {
        HStack {
            
            ZStack{
            box
             Text("Work")
            }
            ZStack{
                box
             Text("Study")
            }
        }
    }.padding(6)
    VStack{
        HStack {
            ZStack{
                box
                    .background(Color.black)
                    .cornerRadius(16)
             Text("Workout")
                    .foregroundColor(.white)
            }
            ZStack{
                box
             Text("Reading")
            }
        }
    }.padding(6)
    VStack{
        HStack {
            ZStack{
                box
             Text("Meditation")
            }
            ZStack{
                box
             Text("Others")
                }
            }
        }
        .padding(6)
        }
    }
}

//blocks

var box: some View {
    Rectangle()
        .fill(Color.gray.opacity(0.1))
        .cornerRadius(16)
        .frame(width: 170, height: 60)
}
    
struct Category_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
