*GeoJSON-Examples
nbCinemaScreensPerFrenchRegion
	<sampleInstance>

	|model dic csv |

	csv := (NeoCSVReader on: (self cinemaDataFrance2020_csv) readStream)
   		separator: $;;
   		upToEnd.

	model := self regionsFranceMetropole .

	dic := OGCObject createStyleDictionary: #(nil nil black 0.5).
	model applyStyle: dic.
	model applyContinuousColorationOn: 'nbEcrans' withFeatureData: csv withAssociateKey: 'code' withColor: 'blue'.
	^ model