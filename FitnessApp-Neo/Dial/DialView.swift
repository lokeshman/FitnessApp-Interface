//
//  DialView.swift
//  FitnessApp-Neo
//
//  Created by Lokesh Mandal on 10/10/24.
//

import SwiftUI


struct DialView: View {
    var body: some View {
        VStack {
            DialHeaderView(name: "Lokesh", image: "profile")
                .padding()
            Dial(goal: 10_000, steps: 7_540)
                .padding()
            
            HStack(spacing: 30) {
                StatTile(image: "location", value: "4.75", measurement: "Km")
                StatTile(image: "bolt", value: "268", measurement: "Kcal")
                StatTile(image: "timer", value: "72", measurement: "Min")
                
            }
            
        }
        .padding()
        .background(Color.backgroundGray)
    }
}

struct StatTile: View {
    
    let image: String
    let value: String
    let measurement: String
    
    
    var body: some View {
        VStack {
            Image(systemName: image)
            Text(value)
                .font(.title)
            Text(measurement)
        }
        .foregroundColor(.accentColor)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 15).fill(Color.backgroundGray)
                .shadow(color: .foregroundGray, radius: 3, x: 8, y: 8)
                .shadow(color: .white, radius: 3, x: -8, y: -8)
        )
    }
}


struct ContentView_Preview: PreviewProvider {
    static var previews: some View{
        DialView()
    }
}

extension Color {
    static let backgroundGray = (Color(red: 0.922, green: 0.925, blue: 0.941))
    static let foregroundGray = (Color(red: 0.871, green: 0.871, blue: 0.871))
}
