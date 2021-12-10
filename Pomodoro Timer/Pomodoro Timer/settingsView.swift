//
//  settingsView.swift
//  Pomodoro Timer
//
//  Created by Yessenali Zhanaidar on 10.12.2021.
//

import SwiftUI

struct settingsView: View {
    init() {
        UITableView.appearance().backgroundColor = .black
    }
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Settings")
                    .font(.system(size: 17, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.top, 5)
                Spacer()
                    List {
                
                    HStack{
                        Text("Focus time")
                            .foregroundColor(.white)
                        Spacer()
                        Button(action: {}) {
                            Text("25:00")
                                .foregroundColor(.gray)
                        }
                    }.listRowBackground(Color.black)
                    
                    HStack{
                        Text("Break time")
                            .foregroundColor(.white)
                        Spacer()
                        Button(action: {}) {
                            Text("05:00")
                                .foregroundColor(.gray)
                        }
                    }.listRowBackground(Color.black)
                    HStack{
                        Text("Sessions")
                            .foregroundColor(.white)
                        Spacer()
                        Button(action: {}) {
                            Text("2")
                                .foregroundColor(.gray)
                        }
                    }.listRowBackground(Color.black)
                
                    }.listStyle(GroupedListStyle())
                }
            }
        }
    }

//
//extension Color{
//    static func rgb(r: Double, g: Double, b: Double) -> Color {
//        return Color(red: r / 255, green: g / 255, blue: b / 255)
//    }
//    static let backgroundColor = Color.rgb(r: 51, g: 51, b: 51)
//}


struct settingsView_Previews: PreviewProvider {
    static var previews: some View {
        settingsView()
    }
}
