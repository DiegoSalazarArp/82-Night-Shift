//
//  ContentView.swift
//  82-Night-Shift
//
//  Created by Diego Salazar Arp on 23-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var schedule: Bool = false
    @State private var manualy: Bool = false
    @State private var colorTemperature: CGFloat = 0.5
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Header text")
                    .padding(5)
                    .lineLimit(nil))
                {
                    
                    Toggle(isOn: $schedule){
                        Text("Schedule")
                    }
                    
                    HStack {
                        VStack {
                            Text("From")
                            Text("To")
                        }
                        Spacer()
                        
                        NavigationLink(destination: Text("Schedule Settings")){
                            VStack{
                                Text("Sunset").foregroundColor(Color.blue)
                                Text("Sunrise").foregroundColor(Color.blue)
                            }
                            
                        }.fixedSize()
                    }
                    
                }
                Section(header: Text("").padding())
                {
                    Toggle(isOn: $manualy) {
                        Text("Manually enable it till tomorrow")
                    }
                }
                Section(header: Text("Color Temperature").padding()) {
                    HStack {
                        Text("Less Warm")
                        Slider(value: $colorTemperature)
                        Text("More Warm")
                    }
                }
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
