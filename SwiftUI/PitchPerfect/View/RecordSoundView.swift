//
//  RecordSoundView.swift
//  PitchPerfect
//
//  Created by David Chea on 27/10/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import SwiftUI

struct RecordSoundView: View {
    
    // MARK: - Property
    
    @State private var isRecording = false
    @State private var selection: Int!
    
    // MARK: - View
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 50) {
                Button(action: { self.isRecording.toggle() }) {
                    Image("icon_record")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 125, height: 125)
                }
                .disabled(isRecording)
                .opacity(isRecording ? 0.5 : 1)
                
                Text(isRecording ? "RECORDING IN PROGRESS" : "TAP TO RECORD")
                
                NavigationLink(destination: PlaySoundView(), tag: 1, selection: $selection) {
                    Button(action: {
                        self.isRecording.toggle()
                        self.selection = 1
                    }) {
                        Image("icon_stop")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 75, height: 75)
                    }
                }
                .disabled(!isRecording)
                .opacity(isRecording ? 1 : 0.5)
            }
            .navigationBarTitle("Record Sound")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone 11 Pro Max"], id: \.self) { deviceName in
            RecordSoundView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
