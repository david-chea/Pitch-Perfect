//
//  PlaySoundView.swift
//  PitchPerfect
//
//  Created by David Chea on 27/10/2019.
//  Copyright © 2019 David Chea. All rights reserved.
//

import SwiftUI

struct PlaySoundView: View {
    
    // MARK: - View
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Spacer()
                
                Image("icon_slow")
                
                Spacer()
                
                Image("icon_fast")
                
                Spacer()
            }
            
            Spacer()
            
            HStack {
                Spacer()
                
                Image("icon_highpitch")
                
                Spacer()
                
                Image("icon_lowpitch")
                
                Spacer()
            }
            
            Spacer()
            
            HStack {
                Spacer()
                
                Image("icon_echo")
                
                Spacer()
                
                Image("icon_reverb")
                
                Spacer()
            }
            
            Spacer()
            
            Image("icon_stop")
                .resizable()
                .frame(width: 75, height: 75)
            
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
