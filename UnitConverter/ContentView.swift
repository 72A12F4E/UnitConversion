//
//  ContentView.swift
//  UnitConversionApp
//
//  Created by Blake McAnally on 10/21/20.
//

import SwiftUI

struct ListSection {
    let title: String
    let rows: [ListRow]
}

struct ListRow {
    let title: String
    let image: String
    let units: [Dimension]
}

extension ListSection: Identifiable {
    var id: String {
        title
    }
}

extension ListRow: Identifiable {
    var id: String {
        title
    }
}

struct ContentView: View {


    let sections: [ListSection] = [
        ListSection(title: "Physical Dimension", rows: [
            ListRow(title: "Area", image: "ruler", units: Units.area),
            ListRow(title: "Length", image: "ruler", units: Units.length),
            ListRow(title: "Volume", image: "cube.transparent", units: Units.volume),
            ListRow(title: "Angle", image: "level", units: Units.angle),
        ]),
        ListSection(title: "Mass, Weight, and Force", rows: [
            ListRow(title: "Mass", image: "scalemass", units: Units.mass),
            ListRow(title: "Pressure", image: "barometer", units: Units.pressure),
        ]),
        ListSection(title: "Time and Motion", rows: [
            ListRow(title: "Acceleration", image: "hare", units: Units.acceleration),
            ListRow(title: "Duration", image: "clock", units: Units.time),
            ListRow(title: "Frequency", image: "metronome", units: Units.frequency),
            ListRow(title: "Speed", image: "speedometer", units: Units.speed),
        ]),
        ListSection(title: "Energy, Heat, and Light", rows: [
            ListRow(title: "Energy", image: "bolt.fill.batteryblock", units: Units.energy),
            ListRow(title: "Power", image: "bolt", units: Units.power),
            ListRow(title: "Temperature", image: "thermometer", units: Units.temperature),
            ListRow(title: "Illuminance", image: "lightbulb", units: Units.illuminance),
        ]),
        ListSection(title: "Electricity", rows: [
            ListRow(title: "Charge", image: "bolt", units: Units.charge),
            ListRow(title: "Current", image: "waveform.path", units: Units.current),
            ListRow(title: "Potential Difference", image: "bolt", units: Units.potentialDifference),
            ListRow(title: "Resistance", image: "bolt", units: Units.resistance),
        ]),
        ListSection(title: "Concentration and Dispersion", rows: [
            ListRow(title: "Mass Concentration", image: "eyedropper", units: Units.massConcentration),
            ListRow(title: "Dispersion", image: "eyedropper", units: Units.dispersion),
        ]),
        ListSection(title: "Fuel Efficiency", rows: [
            ListRow(title: "Fuel Efficiency", image: "car", units: Units.fuelEfficiency),
        ]),
        ListSection(title: "Data Storage", rows: [
            ListRow(title: "Information Storage", image: "externaldrive", units: Units.dataStorage)
        ]),
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(sections) { section in
                    Section(header: Text(section.title)) {
                        ForEach(section.rows) { row in
                            NavigationLink(
                                destination: UnitConversionView(title: row.title, row.units)
                                    .navigationTitle(row.title)
                            ) {
                                Label(row.title, systemImage: row.image)
                            }
                        }
                    }
                }
            }.navigationTitle("Unit Converter")
            .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
