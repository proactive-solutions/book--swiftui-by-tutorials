//
//  FlightBoardItemDetails.swift
//  MountainAirport
//
//  Created by CypherPoet on 11/2/19.
// ✌️
//

import SwiftUI


struct FlightBoardItemDetails: View {
    let flightInfo: FlightInformation
}


// MARK: - Computeds
extension FlightBoardItemDetails {


}


// MARK: - Body
extension FlightBoardItemDetails {

    var body: some View {
        VStack(alignment: .leading) {

            HStack {
                Text("\(flightInfo.airline) Flight \(flightInfo.number)")
                    .font(.largeTitle)
                
                Spacer()
            }
                
            Text("\(flightInfo.direction == .arrival ? "From: " : "To: ")\(flightInfo.connectingAirport)")
            
            Text(flightInfo.flightBoardStatus)
                .foregroundColor(Color(flightInfo.timelineColor))
            
            Spacer()
        }
        .font(.headline)
        .padding()
    }
}


// MARK: - View Variables
extension FlightBoardItemDetails {


}



// MARK: - Preview
struct FlightBoardItemDetails_Previews: PreviewProvider {

    static var previews: some View {
        FlightBoardItemDetails(flightInfo: SampleFlightInformationState.default.flightInfo[0])
            .accentColor(.pink)
    }
}
