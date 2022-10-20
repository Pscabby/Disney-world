//
//  ContentView.swift
//  disney world
//
//  Created by Abby on 2022/10/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
                VStack {
                        Image("disney")
                            .resizable()
                            .scaledToFit()
                            .ignoresSafeArea()
                    NavigationLink{
                        tabviwe()
                    } label:{
                        Image("flightE")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 100)
                    }
                }
                .navigationTitle("")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
