/*
The MIT License (MIT)
Copyright (c) 2016 Jay Alder

Permission is hereby granted, free of charge, to any person obtaining a copy of
 this software and associated documentation files (the "Software"), to deal in
 the Software without restriction, including without limitation the rights to
 use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
 of the Software, and to permit persons to whom the Software is furnished to do
 so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
*/

import Cocoa

extension XMLElement {
    public var doubleValue: Double? {
        if let string = stringValue {
            return Double.init(string)
        } else {
            return nil
        }
    }
}

public struct NWSObservation {
    public var credit: String?
    public var creditURL: String?
    public var suggestedPickup: String?
    public var suggestedPickupPeriod: Double?
    public var location: String?
    public var stationId: String?
    public var latitude: String?
    public var longitude: String?
    public var elevation: Double?
    public var observationTime: String?
    public var observationTimeRfc822: String?
    public var weather: String?
    public var temperatureString: String?
    public var tempF: Double?
    public var tempC: Double?
    public var waterTempF: Double?
    public var waterTempC: Double?
    public var relativeHumidity: Double?
    public var windString: String?
    public var windDir: String?
    public var windDegrees: Double?
    public var windMph: Double?
    public var windGustMph: Double?
    public var windKt: Double?
    public var windGustKt: Double?
    public var pressureString: String?
    public var pressureMb: Double?
    public var pressureIn: Double?
    public var pressureTendencyMb: Double?
    public var pressureTendencyIn: Double?
    public var dewpointString: String?
    public var dewpointF: Double?
    public var dewpointC: Double?
    public var heatIndexString: String?
    public var heatIndexF: Double?
    public var heatIndexC: Double?
    public var windchillString: String?
    public var windchillF: Double?
    public var windchillC: Double?
    public var visibilityMi: Double?
    public var waveHeightM: Double?
    public var waveHeightFt: Double?
    public var dominantPeriodSec: Double?
    public var averagePeriodSec: Double?
    public var meanWaveDir: String?
    public var meanWaveDegrees: Double?
    public var tideFt: Double?
    public var steepness: String?
    public var waterColumnHeight: Double?
    public var surfHeightFt: String?
    public var swellDir: String?
    public var swellDegrees: Double?
    public var swellPeriod: String?
    public var iconUrlBase: String?
    public var iconName: String?
    public var twoDayHistoryUrl: String?
    public var iconUrlName: String?
    public var obUrl: String?
    public var disclaimerUrl: String?
    public var copyrightUrl: String?
    public var privacyPolicyUrl: String?

    public init(stationID: String, baseURL: String = "http://w1.weather.gov/xml/current_obs/") throws {
        do {
            let xmlDoc = try XMLDocument(contentsOf: URL(string: "\(baseURL)\(stationID).xml")!, options: 0)

            if let rootChild = xmlDoc.child(at: 1) as? XMLElement {
                credit                  = rootChild.elements(forName: "credit"                   ).first?.stringValue
                creditURL             = rootChild.elements(forName: "credit_URL"               ).first?.stringValue
                weather                 = rootChild.elements(forName: "weather"                  ).first?.stringValue
                iconUrlBase           = rootChild.elements(forName: "icon_url_base"            ).first?.stringValue
                iconName              = rootChild.elements(forName: "icon_name"                ).first?.stringValue
                twoDayHistoryUrl     = rootChild.elements(forName: "two_day_history_url"      ).first?.stringValue
                iconUrlName           = rootChild.elements(forName: "icon_url_name"            ).first?.stringValue
                obUrl                  = rootChild.elements(forName: "ob_url"                   ).first?.stringValue
                disclaimerUrl          = rootChild.elements(forName: "disclaimer_url"           ).first?.stringValue
                copyrightUrl           = rootChild.elements(forName: "copyright_url"            ).first?.stringValue
                privacyPolicyUrl      = rootChild.elements(forName: "privacy_policy_url"       ).first?.stringValue

                suggestedPickup        = rootChild.elements(forName: "suggested_pickup"         ).first?.stringValue
                location                = rootChild.elements(forName: "location"                 ).first?.stringValue
                latitude                = rootChild.elements(forName: "latitude"                 ).first?.stringValue
                longitude               = rootChild.elements(forName: "longitude"                ).first?.stringValue
                observationTime        = rootChild.elements(forName: "observation_time"         ).first?.stringValue
                observationTimeRfc822 = rootChild.elements(forName: "observation_time_rfc822"  ).first?.stringValue
                suggestedPickupPeriod = rootChild.elements(forName: "suggested_pickup_period"  ).first?.doubleValue
                elevation               = rootChild.elements(forName: "elevation"                ).first?.doubleValue

                temperatureString      = rootChild.elements(forName: "temperature_string"       ).first?.stringValue
                dewpointString         = rootChild.elements(forName: "dewpoint_string"          ).first?.stringValue
                heatIndexString       = rootChild.elements(forName: "heat_index_string"        ).first?.stringValue
                tempF                  = rootChild.elements(forName: "temp_f"                   ).first?.doubleValue
                tempC                  = rootChild.elements(forName: "temp_c"                   ).first?.doubleValue
                relativeHumidity       = rootChild.elements(forName: "relative_humidity"        ).first?.doubleValue

                waterTempF            = rootChild.elements(forName: "water_temp_f"             ).first?.doubleValue
                waterTempC            = rootChild.elements(forName: "water_temp_c"             ).first?.doubleValue
                windString             = rootChild.elements(forName: "wind_string"              ).first?.stringValue
                windDir                = rootChild.elements(forName: "wind_dir"                 ).first?.stringValue

                windDegrees            = rootChild.elements(forName: "wind_degrees"             ).first?.doubleValue
                windMph                = rootChild.elements(forName: "wind_mph"                 ).first?.doubleValue
                windGustMph           = rootChild.elements(forName: "wind_gust_mph"            ).first?.doubleValue
                windKt                 = rootChild.elements(forName: "wind_kt"                  ).first?.doubleValue
                windGustKt            = rootChild.elements(forName: "wind_gust_kt"             ).first?.doubleValue

                pressureString         = rootChild.elements(forName: "pressure_string"          ).first?.stringValue
                pressureMb             = rootChild.elements(forName: "pressure_mb"              ).first?.doubleValue
                pressureIn             = rootChild.elements(forName: "pressure_in"              ).first?.doubleValue
                pressureTendencyMb    = rootChild.elements(forName: "pressure_tendency_mb"     ).first?.doubleValue
                pressureTendencyIn    = rootChild.elements(forName: "pressure_tendency_in"     ).first?.doubleValue

                windchillString        = rootChild.elements(forName: "windchill_string"         ).first?.stringValue
                dewpointF              = rootChild.elements(forName: "dewpoint_f"               ).first?.doubleValue
                dewpointC              = rootChild.elements(forName: "dewpoint_c"               ).first?.doubleValue
                heatIndexF            = rootChild.elements(forName: "heat_index_f"             ).first?.doubleValue
                heatIndexC            = rootChild.elements(forName: "heat_index_c"             ).first?.doubleValue
                windchillF             = rootChild.elements(forName: "windchill_f"              ).first?.doubleValue
                windchillC             = rootChild.elements(forName: "windchill_c"              ).first?.doubleValue

                visibilityMi           = rootChild.elements(forName: "visibility_mi"            ).first?.doubleValue

                steepness               = rootChild.elements(forName: "steepness"                ).first?.stringValue
                swellPeriod            = rootChild.elements(forName: "swell_period"             ).first?.stringValue
                swellDir               = rootChild.elements(forName: "swell_dir"                ).first?.stringValue
                meanWaveDir           = rootChild.elements(forName: "mean_wave_dir"            ).first?.stringValue
                waveHeightM           = rootChild.elements(forName: "wave_height_m"            ).first?.doubleValue
                waveHeightFt          = rootChild.elements(forName: "wave_height_ft"           ).first?.doubleValue
                dominantPeriodSec     = rootChild.elements(forName: "dominant_period_sec"      ).first?.doubleValue
                averagePeriodSec      = rootChild.elements(forName: "average_period_sec"       ).first?.doubleValue
                meanWaveDegrees       = rootChild.elements(forName: "mean_wave_degrees"        ).first?.doubleValue
                tideFt                 = rootChild.elements(forName: "tide_ft"                  ).first?.doubleValue
                waterColumnHeight     = rootChild.elements(forName: "water_column_height"      ).first?.doubleValue
                surfHeightFt          = rootChild.elements(forName: "surf_height_ft"           ).first?.stringValue
                swellDegrees           = rootChild.elements(forName: "swell_degrees"            ).first?.doubleValue
            }
        } catch {
            throw error
        }
    }
}
