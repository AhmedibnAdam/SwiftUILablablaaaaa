//
//  LandmarkRow.swift
//  aaa
//
//  Created by Adam on 11/24/19.
//  Copyright © 2019 AdamTests. All rights reserved.
//

import SwiftUI


struct LandmarkRow : View {
    var landmark: Landmark
    
    var body: some View {
        HStack{
            landmark.image
            Text(landmark.name)
        }
    }
}

#if DEBUG
struct LandmarkRow_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
#endif
