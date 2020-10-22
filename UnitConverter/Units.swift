//
//  Units.swift
//  UnitConversionApp
//
//  Created by Blake McAnally on 10/21/20.
//

import Foundation

enum Units {
    static let formatter: MeasurementFormatter = {
        let formatter = MeasurementFormatter()
        formatter.unitOptions = .providedUnit
        formatter.unitStyle = .long
        return formatter
    }()

    static let area: [UnitArea] = [
        .squareMegameters,
        .squareKilometers,
        .squareMeters,
        .squareCentimeters,
        .squareMillimeters,
        .squareMicrometers,
        .squareNanometers,
        .squareInches,
        .squareFeet,
        .squareYards,
        .squareMiles,
        .acres,
        .ares,
        .hectares,
    ]

    static let length: [UnitLength] = [
        .megameters,
        .kilometers,
        .hectometers,
        .decameters,
        .meters,
        .decimeters,
        .centimeters,
        .millimeters,
        .micrometers,
        .nanometers,
        .picometers,
        .inches,
        .feet,
        .yards,
        .miles,
        .scandinavianMiles,
        .lightyears,
        .nauticalMiles,
        .fathoms,
        .furlongs,
        .astronomicalUnits,
        .parsecs,
    ]

    static let volume: [UnitVolume] = [
        .megaliters,
        .kiloliters,
        .liters,
        .deciliters,
        .centiliters,
        .milliliters,
        .cubicKilometers,
        .cubicMeters,
        .cubicDecimeters,
        .cubicCentimeters,
        .cubicMillimeters,
        .cubicInches,
        .cubicFeet,
        .cubicYards,
        .cubicMiles,
        .acreFeet,
        .bushels,
        .teaspoons,
        .tablespoons,
        .fluidOunces,
        .cups,
        .pints,
        .quarts,
        .gallons,
        .imperialTeaspoons,
        .imperialTablespoons,
        .imperialFluidOunces,
        .imperialPints,
        .imperialQuarts,
        .imperialGallons,
        .metricCups,
    ]

    static let angle: [UnitAngle] = [
        .degrees,
        .arcMinutes,
        .arcSeconds,
        .radians,
        .gradians,
        .revolutions,
    ]

    static let mass: [UnitMass] = [
        .kilograms,
        .grams,
        .decigrams,
        .centigrams,
        .milligrams,
        .micrograms,
        .nanograms,
        .picograms,
        .ounces,
        .pounds,
        .stones,
        .metricTons,
        .shortTons,
        .carats,
        .ouncesTroy,
        .slugs,
    ]

    static let pressure: [UnitPressure] = [
        .newtonsPerMetersSquared,
        .gigapascals,
        .megapascals,
        .kilopascals,
        .hectopascals,
        .inchesOfMercury,
        .bars,
        .millibars,
        .millimetersOfMercury,
        .poundsForcePerSquareInch,
    ]

    static let acceleration: [UnitAcceleration] = [
        .metersPerSecondSquared,
        .gravity
    ]

    static let time: [UnitDuration] = [
        .hours,
        .minutes,
        .seconds,
        .milliseconds,
        .microseconds,
        .nanoseconds,
        .picoseconds,
    ]

    static let frequency: [UnitFrequency] = [
        .terahertz,
        .gigahertz,
        .megahertz,
        .kilohertz,
        .hertz,
        .millihertz,
        .microhertz,
        .nanohertz,
        .framesPerSecond,
    ]

    static let speed: [UnitSpeed] = [
        .metersPerSecond,
        .kilometersPerHour,
        .milesPerHour,
        .knots,
    ]

    static let energy: [UnitEnergy] = [
        .kilojoules,
        .joules,
        .kilocalories,
        .calories,
        .kilowattHours,
    ]

    static let power: [UnitPower] = [
        .terawatts,
        .gigawatts,
        .megawatts,
        .kilowatts,
        .watts,
        .milliwatts,
        .microwatts,
        .nanowatts,
        .picowatts,
        .femtowatts,
        .horsepower,
    ]

    static let temperature: [UnitTemperature] = [
        .fahrenheit,
        .celsius,
        .kelvin
    ]

    static let illuminance: [UnitIlluminance] = [
        .lux
    ]

    static let charge: [UnitElectricCharge] = [
        .coulombs,
        .megaampereHours,
        .kiloampereHours,
        .ampereHours,
        .milliampereHours,
        .microampereHours,
    ]

    static let current: [UnitElectricCurrent] = [
        .megaamperes,
        .kiloamperes,
        .amperes,
        .milliamperes,
        .microamperes,
    ]

    static let potentialDifference: [UnitElectricPotentialDifference] = [
        .megavolts,
        .kilovolts,
        .volts,
        .millivolts,
        .microvolts,
    ]

    static let resistance: [UnitElectricResistance] = [
        .megaohms,
        .kiloohms,
        .ohms,
        .milliohms,
        .microohms,
    ]

    static let massConcentration: [UnitConcentrationMass] = [
        .gramsPerLiter,
        .milligramsPerDeciliter
    ]

    static let dispersion: [UnitDispersion] = [
        .partsPerMillion
    ]

    static let fuelEfficiency: [UnitFuelEfficiency] = [
        .litersPer100Kilometers,
        .milesPerGallon,
    ]

    static let dataStorage: [UnitInformationStorage] = [
        .bytes,
        .bits,
        .nibbles,
        .yottabytes,
        .zettabytes,
        .exabytes,
        .petabytes,
        .terabytes,
        .gigabytes,
        .megabytes,
        .kilobytes,
        .yottabits,
        .zettabits,
        .exabits,
        .petabits,
        .terabits,
        .gigabits,
        .megabits,
        .kilobits,
        .yobibytes,
        .zebibytes,
        .exbibytes,
        .pebibytes,
        .tebibytes,
        .gibibytes,
        .mebibytes,
        .kibibytes,
        .yobibits,
        .zebibits,
        .exbibits,
        .pebibits,
        .tebibits,
        .gibibits,
        .mebibits,
        .kibibits,
    ]
}




