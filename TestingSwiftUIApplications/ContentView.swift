//
//  ContentView.swift
//  TestingSwiftUIApplications
//
//  Created by Ramill Ibragimov on 18.11.2019.
//  Copyright © 2019 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var darkModeEnabled: Bool = false
    
    var body: some View {
        VStack {
            Toggle(isOn: self.$darkModeEnabled) {
                Text("")
            }.labelsHidden()
                .accessibility(identifier: "darkModeToggle")
            
            Text(self.darkModeEnabled ? "ON" : "OFF").font(.largeTitle)
                .accessibility(identifier: "darkModeText")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
