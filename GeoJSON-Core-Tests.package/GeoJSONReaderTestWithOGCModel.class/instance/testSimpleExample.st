tests
testSimpleExample
	| sample modelOGC coordPoint coordLineString coordPolygon |

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

modelOGC := GeoJSONReader fromString: sample.

"check class"
self assert: modelOGC class equals: OGCFeatureCollection.

"check first feature"
coordPoint := #(102.0 0.5).
self assert: modelOGC features first geometry equals: (OGCPoint xy: coordPoint).

"check second feature"
coordLineString := #(#(102.0 0.0) #(103.0 1.0) #(104.0 0.0) #(105.0 1.0) ).
self assert: modelOGC features second geometry equals: (OGCLineString new coordinates: coordLineString ).

"check third and last feature"
coordPolygon := #(#( #(100.0 0.0) #(101.0 0.0) #(101.0 1.0) #(100.0 1.0) #(100.0 0.0) )).
self assert: modelOGC features third geometry equals: (OGCPolygon new coordinates: coordPolygon).