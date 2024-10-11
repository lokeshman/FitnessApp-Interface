//
//  DialHeaderView.swift
//  FitnessApp-Neo
//
//  Created by Lokesh Mandal on 10/10/24.
//

import Foundation
import SwiftUI

struct DialHeaderView: View {
    let name: String
    let image:String
    var body: some View {
        HStack (alignment: .top) {
            VStack (alignment: .leading, spacing: 20){
                Text("Morning \n \(name)")
                    .font(.title)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                Text("Let's get Started")
            }
            Spacer()
               
            
            
            Image(image)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .frame(width: 50)
               
        }
        .foregroundColor(.accentColor)
    }
}
