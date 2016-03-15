# NWSObservation

This is a simple library that enables the loading and parsing of real-time weather 
data from National Weather Service stations.  

## Usage

To use this library, you have to know the name of the NWS observation station that you'd like to use.
These are available at their website.  As an example, we'll use ```KCVO```.

```Swift
let observation = NWSObservation(stationID: "KCVO")
```

The Observation instance contains all the information that the weather service provided.  
Every variable allowed for in the XML schema has an accompanied instance variable.  
Those fields that were ommitted are left ```nil```.

It is also possible to query for the weather summary icon as well.

```Swift
let icon = observation.weatherIcon
```
