//
//  ContentView.swift
//  Recreating Apple Watch Breathing Animation
//
//  Created by Monique Shaqiri on 15.05.21.
//  Copyright © 2021 Monique Shaqiri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State var scale_in_out = false
  @State var rotate_in_out = false
    var body: some View {
        ZStack {
            Group {
                ZStack {
                Circle()
                    .frame(width: 80, height: 80)
                    .foregroundColor(Color.green)
                    .offset(y:42)
                Circle()
                    .frame(width: 80, height: 80)
                    .foregroundColor(Color.green)
                    .offset(y:42)
                }.opacity(1/3)
                
            Group {
                    ZStack {
                    Circle()
                        .frame(width: 80, height: 80)
                        .foregroundColor(Color.green)
                        .offset(y:-42)
                    Circle()
                        .frame(width: 80, height: 80)
                        .foregroundColor(Color.green)
                        .offset(y:42)
                        
                        }
            }.rotationEffect(.degrees(60))
                .opacity(1/4)
                
                
                
                Group {
                    ZStack {
                        Circle()
                            .frame(width: 80, height: 80)
                            .foregroundColor(Color.green)
                            .offset(y:-42)
                        Circle()
                            .frame(width: 80, height: 80)
                            .foregroundColor(Color.green)
                            .offset(y:42)
                                      
                            }
                          }.rotationEffect(.degrees(120))
                              .opacity(1/2)
            }.rotationEffect(.degrees(rotate_in_out ? 90 : 0))
                .scaleEffect(scale_in_out ? 1 : 1/8)
                .animation(Animation.easeInOut.repeatForever(autoreverses: true).speed(1/8))
                .onAppear() {
                    self.rotate_in_out.toggle()
                    self.scale_in_out.toggle()
            }
            
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
