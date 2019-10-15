//
//  ContentView.swift
//  WhereToUseFixedSizedOrHowToAddLabelToTextFieldInSwiftUI
//
//  Created by ramil on 15.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var text = ""
    let label = ["Username", "Email", "Paassword"]
    
    @State var horizontal = true
    @State var vertical = false
    @State var padding1 = Edge.Set.leading
    @State var padding2 = Edge.Set.horizontal
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    ForEach(label, id: \.self) { label in
                        Text(label)
                    }
                    .frame(maxHeight: .infinity)
                }
                .border(Color.blue)
                
                VStack {
                    ForEach(label, id: \.self) { label in
                        TextField(label, text: self.$text)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                }
                .border(Color.blue)
            }
            .padding(.horizontal)
        .fixedSize(horizontal: false, vertical: true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
