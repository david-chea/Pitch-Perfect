//
//  RecordSoundView.swift
//  PitchPerfect
//
//  Created by David Chea on 27/10/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import SwiftUI

struct RecordSoundView: View {
    
    // MARK: - View
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 50) {
                Image("icon_record")
                    .resizable()
                    .frame(width: 125, height: 125)
                Text("TAP TO RECORD")
                
                NavigationLink(destination: PlaySoundView()) {
                    Image("icon_stop")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 75, height: 75)
                }
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
