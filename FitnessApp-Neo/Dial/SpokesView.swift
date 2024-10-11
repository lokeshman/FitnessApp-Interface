//
//  SpokesView.swift
//  FitnessApp-Neo
//
//  Created by Lokesh Mandal on 10/10/24.
//

import Foundation
import SwiftUI


struct SpokesView: View {
    var body: some View {
        ForEach(0..<360, id: \.self) { index in
            if (Double(index).truncatingRemainder(dividingBy: 2.25)) == 0 {
                Rectangle()
                    .frame(width: 1)
                    .rotationEffect(.degrees(Double(index)))
                    
            }
        }
    }
}
