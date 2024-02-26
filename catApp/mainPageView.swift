//
//  mainPageView.swift
//  catApp
//
//  Created by Triet Tran on 2/25/24.
//

import Foundation
import SwiftUI

struct Cat {
    var name: String
    var gender: String
    var age: String
    var imageName: String
}

struct MainPage: View {
    let cats: [Cat] = [
        Cat(name: "Whiskers", gender: "Male", age: "3 years", imageName: "cat1"),
        Cat(name: "Mittens", gender: "Female", age: "2 years", imageName: "cat2"),
        Cat(name: "Fluffy", gender: "Male", age: "4 years", imageName: "cat3"),
        Cat(name: "Socks", gender: "Female", age: "5 years", imageName: "cat4"),
        Cat(name: "Shadow", gender: "Male", age: "2.5 years", imageName: "cat5"),
        Cat(name: "Luna", gender: "Female", age: "1.5 years", imageName: "cat6")
    ]

    var body: some View {
        VStack(alignment: .leading) {
            Text("The Dancing Cat")
                .font(.title)
                .foregroundStyle(Color(UIColor(hex: 0x31BFAF)))
                .padding()

            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                    ForEach(cats, id: \.name) { cat in
                        VStack {
                            Image(cat.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 120, height: 120)
                                .cornerRadius(8)

                            Text(cat.name)
                                .font(.headline)
                                .padding(.top, 8)

                            Text("\(cat.gender), \(cat.age)")
                                .foregroundColor(.gray)
                                .font(.subheadline)
                                .padding(.bottom, 8)
                        }
                    }
                }
                .padding()
            }
        }
    }
}

extension UIColor {
    convenience init(hex: UInt32, alpha: CGFloat = 1.0) {
        self.init(
            red: CGFloat((hex & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((hex & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(hex & 0x0000FF) / 255.0,
            alpha: alpha
        )
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
