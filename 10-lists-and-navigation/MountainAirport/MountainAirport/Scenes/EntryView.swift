//
//  EntryView.swift
//  MountainAirport
//
//  Created by CypherPoet on 11/1/19.
// ✌️
//

import SwiftUI


struct EntryView: View {
    @EnvironmentObject private var store: AppStore
    
    @State private var currentTab: Int = 0
}


// MARK: - Computeds
extension EntryView {
    
    var flightInfo: [FlightInformation] {
        store.state.flightInformationState.flightInfo
    }
}


// MARK: - Body
extension EntryView {

    var body: some View {
        TabView(selection: $currentTab) {
            FlightBoard(direction: .arrival)
                .tabItem {
                    Image(systemName: "icloud.and.arrow.down")
                        .resizable()
                    Text(FlightDirection.arrival.boardName)
                }
                .tag(0)
            
            FlightBoard(direction: .departure)
                .tabItem {
                    Image(systemName: "icloud.and.arrow.up")
                    Text(FlightDirection.departure.boardName)
                }
                .tag(1)
        }
        .navigationBarTitle("Mountain Airport")
    }
}


// MARK: - View Variables
extension EntryView {



}



// MARK: - Preview
struct EntryView_Previews: PreviewProvider {
    
    static var previews: some View {
        EntryView()
            .accentColor(.pink)
            .environmentObject(SampleStore.default)
    }
}
