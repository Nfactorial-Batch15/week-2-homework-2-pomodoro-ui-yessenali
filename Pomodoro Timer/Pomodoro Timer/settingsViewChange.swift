//
//  settingsViewChange.swift
//  Pomodoro Timer
//
//  Created by Yessenali Zhanaidar on 10.12.2021.
//

import SwiftUI

struct settingsViewChange: View {
    init() {
        UITableView.appearance().backgroundColor = .black
    }
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Button(action: {}) {
                    Image("chevron.left")
                    }
                        
                    Spacer().frame(width: 150)
                        Text("Settings")
                        .font(.system(size: 17, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.top, 5)
                    Spacer().frame(width: 110)
                    Button(action: {}) {
                        Text("Save")
                            .font(.system(size: 17, weight: .bold))
                            .foregroundColor(.white)
                            .padding(.top, 5)
                    }
                Spacer()
                }
                
                List{
                    
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
                                .foregroundColor(.white)
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

struct settingsViewChange_Previews: PreviewProvider {
    static var previews: some View {
        settingsViewChange()
    }
}
