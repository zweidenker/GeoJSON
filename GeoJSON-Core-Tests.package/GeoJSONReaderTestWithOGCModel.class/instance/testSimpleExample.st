tests
testSimpleExample
	| sample modelGJ modelOGC coordPoint coordLineString coordPolygon |

sample := '{ "type": "FeatureCollection",
  "features": [
    { "type": "Feature",
      "geometry": {"type": "Point", "coordinates": [102.0, 0.5]},
      "properties": {"prop0": "value0"}
      },
    { "type": "Feature",
      "geometry": {
        "type": "LineString",
        "coordinates": [
          [102.0, 0.0], [103.0, 1.0], [104.0, 0.0], [105.0, 1.0]
          ]
        },
      "properties": {
        "prop0": "value0",
        "prop1": 0.0
        }
      },
    { "type": "Feature",
       "geometry": {
         "type": "Polygon",
         "coordinates": [
           [ [100.0, 0.0], [101.0, 0.0], [101.0, 1.0],
             [100.0, 1.0], [100.0, 0.0] ]
           ]

       },
       "properties": {
         "prop0": "value0",
         "prop1": {"this": "that"}
         }
       }
    ]
  }'.

modelGJ := GeoJSONReader fromString: sample.
modelOGC := GeoJSONReader fromString: sample withModel: OGCObject.

"check class"
self assert: modelGJ class equals: GJFeatureCollection.
self assert: modelOGC class equals: OGCFeatureCollection.

"check size"
self assert: modelGJ features size equals: 3.
self assert: modelGJ features size equals: modelGJ features size.

"check first feature"
coordPoint := #(102.0 0.5).
self assert: modelGJ features first geometry equals: (GJPoint coordinates: coordPoint).
self assert: modelOGC features first geometry equals: (OGCPoint xy: coordPoint).

"check second feature"
coordLineString := #(#(102.0 0.0) #(103.0 1.0) #(104.0 0.0) #(105.0 1.0) ).
self assert: modelGJ features second geometry equals: (GJLineString coordinates: coordLineString ).
self assert: modelOGC features second geometry equals: (OGCLineString new coordinates: coordLineString ).

"check third and last feature"
coordPolygon := #(#( #(100.0 0.0) #(101.0 0.0) #(101.0 1.0) #(100.0 1.0) #(100.0 0.0) )).
self assert: modelGJ features third geometry equals: (GJPolygon coordinates: coordPolygon).
self assert: modelOGC features third geometry equals: (OGCPolygon new coordinates: coordPolygon).