//
//  TLButton.swift
//  ToDoList
//
//  Created by Aray Muratova on 16.09.2023.
//

import SwiftUI

struct TLButton: View {
    let title: String;
    let backgroundColor: Color;
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10).foregroundColor(backgroundColor)

                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
       
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(title: "Value", backgroundColor: .yellow) {
            //Action
        }
    }
}
