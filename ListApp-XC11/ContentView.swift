//
//  ContentView.swift
//  ListApp-XC11
//  Copyright © 2019 Paulo Dichone. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let countryList: [Country] = [
       Country(id: 0, name: "Mozambique", population: 2000),
       Country(id: 1, name: "U.S.A", population: 20000),
       Country(id: 2, name: "Camaroon", population: 980),
       Country(id: 3, name: "Belgium", population: 90),
       Country(id: 4, name: "Timor Leste", population: 67),
       Country(id: 5, name: "Angola", population: 500),
       Country(id: 6, name: "India", population: 98),
       Country(id: 7, name: "U.K", population: 9898),
       Country(id: 8, name: "Brazil", population: 8999),
       Country(id: 9, name: "Chile", population: 12),
    ]
    
    var names = ["Maria", "Alberto", "James", "Leandro", "Georgina"]
    
    var body: some View {
        NavigationView {
            List(self.countryList, id: \.id) { country in
                NavigationLink(destination: Destiny(country: country)) {
                  CellRow(country: country)
                }.navigationBarTitle("Countries of the World")
                
            }
        }
        
  
    }
}

struct Destiny: View {
    
    let country: Country
    
    var body: some View {
        Text("\(country.name)'s population is \(String(country.population))")
    }
}



struct CellRow: View {
    let country: Country
    var body: some View {
        
        
        VStack(alignment: .leading, spacing: 8) {
                       Text(country.name)
                        .font(.title)
                        .foregroundColor(.gray)
            
                       Text("Pop: \(String(country.population)) ")
                       .italic()
                        .font(.headline)
                           .foregroundColor(.pink)
                   }
    }
}

struct Country: Identifiable {
    let id: Int
    let name: String
    let population: Int
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
