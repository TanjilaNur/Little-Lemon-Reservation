//
//  InitialView.swift
//  Little-Lemon-Reservation-App
//
//  Created by TanjilaNur-00115 on 16/8/23.
//

import SwiftUI

struct InitialView: View {
    
    @StateObject var model = Model()
    @State var tabSelection = 0
    
    var body: some View {
        TabView (selection: $model.tabViewSelectedIndex){
            
            LocationsView()
                .tag(0)
                .tabItem {
                    if !model.displayingReservationForm {
                        Label("Locations", systemImage: "fork.knife")
                    }
                }
            
            ReservationView()
                .tag(1)
                .tabItem {
                    if !model.displayingReservationForm {
                        Label("Reservation", systemImage: "square.and.pencil")
                    }
                }
        }
        .environmentObject(model)

    }
}



struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}
