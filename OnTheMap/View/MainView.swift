//
//  MainView.swift
//  OnTheMap
//
//  Created by Jonathan Sweeney on 9/18/20.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            MapView()
                .tabItem {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Map")
                }
            Text("TableView Here...")
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("List")
                }
        }
        .navigationBarTitle("OnTheMap", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
                                Button(action: {print("Adding pin...")}, label: {
                                    Image(systemName: "mappin.circle")
                                        .imageScale(.large)
                                        .padding(.leading, 8.0)
                                }), trailing:
                                    Button(action: {print("Refreshing...")}, label: {
                                        Image(systemName: "arrow.clockwise.circle")
                                            .imageScale(.large)
                                            .padding(.trailing, 8.0)
                                    })
                                
        )
        
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
