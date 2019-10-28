//
//  PlaySoundView.swift
//  PitchPerfect
//
//  Created by David Chea on 27/10/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import SwiftUI

struct PlaySoundView: View {
    
    // MARK: - Property
    
    /// Check is the app is playing the sound.
    @State private var isPlaying = false
    
    // MARK: - View
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Spacer()
                
                Button(action: { self.isPlaying.toggle() }) {
                    Image("icon-slow")
                        .renderingMode(.original)
                }
                
                Spacer()
                
                Button(action: { self.isPlaying.toggle() }) {
                    Image("icon-fast")
                        .renderingMode(.original)
                }
                
                Spacer()
            }
            
            Spacer()
            
            HStack {
                Spacer()
                
                Button(action: { self.isPlaying.toggle() }) {
                    Image("icon-highpitch")
                        .renderingMode(.original)
                }
                
                Spacer()
                
                Button(action: { self.isPlaying.toggle() }) {
                    Image("icon-lowpitch")
                        .renderingMode(.original)
                }
                
                Spacer()
            }
            
            Spacer()
            
            HStack {
                Spacer()
                
                Button(action: { self.isPlaying.toggle() }) {
                    Image("icon-echo")
                        .renderingMode(.original)
                }
                
                Spacer()
                
                Button(action: { self.isPlaying.toggle() }) {
                    Image("icon-reverb")
                        .renderingMode(.original)
                }
                
                Spacer()
            }
            
            Spacer()
            
            Button(action: { self.isPlaying.toggle() }) {
                Image("icon-stop")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 75, height: 75)
            }
            .disabled(!isPlaying)
            .opacity(isPlaying ? 1 : 0.5)
            
            Spacer()
        }
        .navigationBarTitle("Play Sound")
    }
}

struct PlaySoundView_Previews: PreviewProvider {
    
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone 11 Pro Max"], id: \.self) { deviceName in
            PlaySoundView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
