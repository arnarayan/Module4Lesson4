//
//  ContentView.swift
//  Module4Lesson4
//
//  Created by Anand Narayan on 2022-02-15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0.0) {
            GeometryReader { geo in
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                    .onTapGesture {
                        print("x:\(geo.size.width) y:\(geo.size.height)")
                    }
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: geo.size.width*2/3, height: geo.size.height*1/4, alignment: .center)
                    .offset(x: (geo.size.width*1/6), y: geo.size.height*1/2.5)
                    .onTapGesture {
                        print("x:\(geo.size.width) y:\(geo.size.height)")
                    }
            }.ignoresSafeArea()
            
            GeometryReader { geo in
                Rectangle()
                .foregroundColor(.purple)
                    .frame(width: geo.size.width/2, height: geo.size.height, alignment: .center)
                    .onTapGesture {
                        print("x:\(geo.size.width) y:\(geo.size.height)")
                    }
                    
                Rectangle()
                .foregroundColor(.orange)
                    .frame(width: geo.size.width/2, height: geo.size.height, alignment: .center)
                    .onTapGesture {
                        print("x:\(geo.size.width) y:\(geo.size.height)")
                    }
                    .offset(x: geo.size.width/2, y:0)
                    
                        
            }.ignoresSafeArea()
        }

        
        


        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
