/*
The MIT License (MIT)
Copyright (c) 2016 Jay Alder

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Cocoa

public struct NWSObservation {
    public var credit: String? = nil
    public var credit_URL: String? = nil
    public var suggested_pickup: String? = nil
    public var suggested_pickup_period: Double? = nil
    public var location: String? = nil
    public var station_id: String? = nil
    public var latitude: String? = nil
    public var longitude: String? = nil
    public var elevation: Double? = nil
    public var observation_time: String? = nil
    public var observation_time_rfc822: String? = nil
    public var weather: String? = nil
    public var temperature_string: String? = nil
    public var temp_f: Double? = nil
    public var temp_c: Double? = nil
    public var water_temp_f: Double? = nil
    public var water_temp_c: Double? = nil
    public var relative_humidity: Double? = nil
    public var wind_string: String? = nil
    public var wind_dir: String? = nil
    public var wind_degrees: Double? = nil
    public var wind_mph: Double? = nil
    public var wind_gust_mph: Double? = nil
    public var wind_kt: Double? = nil
    public var wind_gust_kt: Double? = nil
    public var pressure_string: String? = nil
    public var pressure_mb: Double? = nil
    public var pressure_in: Double? = nil
    public var pressure_tendency_mb: Double? = nil
    public var pressure_tendency_in: Double? = nil
    public var dewpoint_string: String? = nil
    public var dewpoint_f: Double? = nil
    public var dewpoint_c: Double? = nil
    public var heat_index_string: String? = nil
    public var heat_index_f: Double? = nil
    public var heat_index_c: Double? = nil
    public var windchill_string: String? = nil
    public var windchill_f: Double? = nil
    public var windchill_c: Double? = nil
    public var visibility_mi: Double? = nil
    public var wave_height_m: Double? = nil
    public var wave_height_ft: Double? = nil
    public var dominant_period_sec: Double? = nil
    public var average_period_sec: Double? = nil
    public var mean_wave_dir: String? = nil
    public var mean_wave_degrees: Double? = nil
    public var tide_ft: Double? = nil
    public var steepness: String? = nil
    public var water_column_height: Double? = nil
    public var surf_height_ft: String? = nil
    public var swell_dir: String? = nil
    public var swell_degrees: Double? = nil
    public var swell_period: String? = nil
    public var icon_url_base: String? = nil
    public var icon_name: String? = nil
    public var two_day_history_url: String? = nil
    public var icon_url_name: String? = nil
    public var ob_url: String? = nil
    public var disclaimer_url: String? = nil
    public var copyright_url: String? = nil
    public var privacy_policy_url: String? = nil
    
    public init(stationID: String, baseURL: String = "http://w1.weather.gov/xml/current_obs/") throws {
        do {
            let xmlDoc = try NSXMLDocument(contentsOfURL: NSURL(string: "\(baseURL)\(stationID).xml")!, options: 0)
            
            if let rootChild = xmlDoc.childAtIndex(1) as? NSXMLElement {
                
                if let tempChild = rootChild.elementsForName("credit").first {
                    credit = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("credit_URL").first {
                    credit_URL = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("suggested_pickup").first {
                    suggested_pickup = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("suggested_pickup_period").first {
                    suggested_pickup_period = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("location").first {
                    location = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("station_id").first {
                    station_id = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("latitude").first {
                    latitude = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("longitude").first {
                    longitude = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("elevation").first {
                    elevation = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("observation_time").first {
                    observation_time = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("observation_time_rfc822").first {
                    observation_time_rfc822 = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("weather").first {
                    weather = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("temperature_string").first {
                    temperature_string = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("temp_f").first {
                    temp_f = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("temp_c").first {
                    temp_c = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("water_temp_f").first {
                    water_temp_f = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("water_temp_c").first {
                    water_temp_c = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("relative_humidity").first {
                    relative_humidity = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("wind_string").first {
                    wind_string = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("wind_dir").first {
                    wind_dir = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("wind_degrees").first {
                    wind_degrees = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("wind_mph").first {
                    wind_mph = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("wind_gust_mph").first {
                    wind_gust_mph = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("wind_kt").first {
                    wind_kt = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("wind_gust_kt").first {
                    wind_gust_kt = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("pressure_string").first {
                    pressure_string = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("pressure_mb").first {
                    pressure_mb = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("pressure_in").first {
                    pressure_in = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("pressure_tendency_mb").first {
                    pressure_tendency_mb = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("pressure_tendency_in").first {
                    pressure_tendency_in = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("dewpoint_string").first {
                    dewpoint_string = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("dewpoint_f").first {
                    dewpoint_f = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("dewpoint_c").first {
                    dewpoint_c = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("heat_index_string").first {
                    heat_index_string = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("heat_index_f").first {
                    heat_index_f = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("heat_index_c").first {
                    heat_index_c = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("windchill_string").first {
                    windchill_string = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("windchill_f").first {
                    windchill_f = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("windchill_c").first {
                    windchill_c = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("visibility_mi").first {
                    visibility_mi = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("wave_height_m").first {
                    wave_height_m = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("wave_height_ft").first {
                    wave_height_ft = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("dominant_period_sec").first {
                    dominant_period_sec = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("average_period_sec").first {
                    average_period_sec = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("mean_wave_dir").first {
                    mean_wave_dir = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("mean_wave_degrees").first {
                    mean_wave_degrees = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("tide_ft").first {
                    tide_ft = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("steepness").first {
                    steepness = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("water_column_height").first {
                    water_column_height = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("surf_height_ft").first {
                    surf_height_ft = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("swell_dir").first {
                    swell_dir = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("swell_degrees").first {
                    swell_degrees = Double(tempChild.stringValue!)
                }
                
                if let tempChild = rootChild.elementsForName("swell_period").first {
                    swell_period = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("icon_url_base").first {
                    icon_url_base = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("icon_name").first {
                    icon_name = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("two_day_history_url").first {
                    two_day_history_url = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("icon_url_name").first {
                    icon_url_name = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("ob_url").first {
                    ob_url = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("disclaimer_url").first {
                    disclaimer_url = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("copyright_url").first {
                    copyright_url = tempChild.stringValue
                }
                
                if let tempChild = rootChild.elementsForName("privacy_policy_url").first {
                    privacy_policy_url = tempChild.stringValue
                }
            }
        } catch let error {
            throw error
        }
    }
    
    public var weatherIcon: NSImage? {
        get {
            if let urlBase = icon_url_base,
                iconName = icon_url_name,
                url = NSURL(string: urlBase + iconName){
                    return NSImage(contentsOfURL: url)
            } else { return nil }
        }
    }
}
