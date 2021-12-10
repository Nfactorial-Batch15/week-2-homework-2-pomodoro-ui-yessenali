////
////  test.swift
////  Pomodoro Timer
////
////  Created by Yessenali Zhanaidar on 10.12.2021.
////
//
//import SwiftUI
//
///*
//  🧬 Evolution 🧬
// 1. VStack
// 2. ScrollView + VStack
// 3. ScrollView + VStack + ForEach
// 4. List
// 5. List + ForEach
// 6. List + Sections
// 7. List + Sections + Nested ForEach
//
// */
//
//// 1. VStack (10 view limit)
//
//// 2. ScrollView + VStack
//
//
//
//// 7. List + Section + NestedForEach
//struct Seven: View {
//    let folders = [
//        File.folderWithExamples,
//        File.folderWithExamples,
//        File.folderWithExamples,
//        File.folderWithExamples
//    ]
//
//    var body: some View {
//        List {
//            ForEach(folders) { folder in
//                Section(header: Text(folder.name)) {
//                    ForEach(folder.children) { child in
//                        FileView(file: child)
//                    }
//                }
//            }
//        }
//    }
//}
//struct File: Identifiable, Hashable {
//    let id = UUID()
//    
//    let name: String
//    var size: String {
//        "\(Int.random(in: 0 ... 1000))kB"
//    }
//
//    var children: [File] = []
//
//    static let example = File(name: "file")
//    
//    static var folderWithExamples: File {
//        File(name: "folder\(Int.random(in: 0 ... 100))",
//             children: Array(repeating: File.example, count: Int.random(in: 1 ... 5)))
//    }
//    
//}
//
//struct FileView: View {
//    let file: File
//
//    var body: some View {
//        HStack {
//            VStack(alignment: .leading) {
//                Text(file.name)
//                    .font(.system(size: 15, weight: .semibold))
//                Text(file.size)
//                    .font(.system(size: 14, weight: .light))
//                    .foregroundColor(.gray)
//            }
//            .padding(.leading, 16)
//            Spacer()
//        }
//    }
//}
//
//
//struct ListShowcase_Previews: PreviewProvider {
//    static var previews: some View {
//        Seven()
//    }
//}
