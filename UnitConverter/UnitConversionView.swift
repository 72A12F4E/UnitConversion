//
//  UnitConversionView.swift
//  UnitConversionApp
//
//  Created by Blake McAnally on 10/21/20.
//

import SwiftUI
import Combine

struct UnitConversionView<UnitType: Dimension>: View {
    private let units: [UnitType]
    private let title: String

    init(title: String, _ units: [UnitType]) {
        self.title = title
        self.units = units

    }

    @State
    var value: String = ""

    @State
    var fromUnit: UnitType?

    @State
    var toUnit: UnitType?

    private var converted: Measurement<UnitType>? {
        guard let value = Double(value),
              let from = fromUnit,
              let to = toUnit else { return nil }
        let measure = Measurement(value: value, unit: from)
        return measure.converted(to: to)
    }

    var body: some View {
        Form {
            Section {
                TextField("Enter a value", text: $value)
                    .keyboardType(.decimalPad)
                    .onReceive(Just(value)) { (newValue: String) in
                        self.value = newValue.filter({
                            "0123456789.,".contains($0)
                        })
                    }
                Picker("From", selection: $fromUnit) {
                    ForEach(units, id: \.symbol) { unit in
                        Text("\(Units.formatter.string(from: unit))")
                            .tag(unit as UnitType?)
                        // https://www.reddit.com/r/SwiftUI/comments/e4zy0b/optional_binding_for_picker/f9j0hro/
                    }
                }

                Picker("To", selection: $toUnit) {
                    ForEach(units, id: \.symbol) { unit in
                        Text("\(Units.formatter.string(from: unit))")
                            .tag(unit as UnitType?)
                    }
                }
            }

            Section {
                Button("Swap Units") {
                    swap(&fromUnit, &toUnit)
                }
            }

            if let measure = converted {
                Section {
                    Text(Units.formatter.string(from: measure))
                }
            }
        }
    }
}

struct UnitConversionView_Previews: PreviewProvider {
    static var previews: some View {
        UnitConversionView(title: "Temperature", Units.temperature)
    }
}
