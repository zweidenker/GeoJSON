*GeoJSON-Examples
averageProfitPerEntryPerFrenchRegion
	<sampleInstance>
	"an example of coloration: display the regions of France colored by average profit per cinema entry in 2020"

	|model dic csv |

	csv := (NeoCSVReader on: (self cinemaDataFrance2020_csv) readStream)
   		separator: $;;
   		upToEnd.

	model := self regionsFranceMetropole .

	dic := OGCObject createStyleDictionary: #(nil nil black 0.5).
	model applyStyle: dic.
	model applyContinuousColorationOn: 'recetteMoyenneParEntreeEnEuros' withFeatureData: csv withAssociateKey: 'code' withColor: 'red'.
	^ model