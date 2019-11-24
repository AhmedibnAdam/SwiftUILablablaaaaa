//
//  ContentView.swift
//  aaa
//
//  Created by Adam on 11/18/19.
//  Copyright © 2019 AdamTests. All rights reserved.
//

import SwiftUI

import CoreLocation



struct ContentView: View {
    init() {
           UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.clear]
           UINavigationBar.appearance().backgroundColor = .clear
       }
    var body: some View {
        
        NavigationView {
            VStack {
                MapView()
                    .frame(height: 100)
                CircleImage()
                    .offset(y: -50)
                    .padding(.bottom, -50)
                
                LandmarkList()
                
                Spacer()
            }
        }//.edgesIgnoringSafeArea(.top)
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {

          ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
                  LandmarkList()
                      .previewDevice(PreviewDevice(rawValue: deviceName))
              }
    }
}

struct LandmarkList : View {
    var body: some View {
        
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
#endif


struct CircleImage: View {
    var body: some View {
        
        Image("aaa")
            
            .frame(width: 100.0, height: 100.0, alignment: .center)
            
            .aspectRatio(CGSize(width: 100.0, height: 100.0), contentMode: .fill)
            .clipped()
            .clipShape(Circle())
            
            //  .aspectRatio(contentMode: .fit)
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
        
    }
}






 struct Landmark: Hashable, Codable , Identifiable{
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var park: String
    var category: Category
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
    }
}

extension Landmark {
    var image: Image {
        Image(systemName: "aaa")
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double 
    var longitude: Double
}
