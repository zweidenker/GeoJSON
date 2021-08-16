*GeoJSON-Examples
regionsFranceMetropoleApplyStyleIfPopulation
	<sampleInstance>
	| populationDictionary model style1 style2 style3 |
	model := self regionsFranceMetropole .
	" 1. we create the dictionary with population data "
	populationDictionary := Dictionary newFromPairs: {
		'Hauts-de-France' . 5987795 .
		'Normandie' . 3313432 .
		'Île-de-France' . 12291557 .
		'Centre-Val de Loire' . 2565726 .
		'Bourgogne-Franche-Comté' . 2794517 .
		'Grand Est' . 5536002 .
		'Pays de la Loire' . 3818421 .
		'Bretagne' . 3358524 .
		'Nouvelle-Aquitaine' . 6018424 .
		'Occitanie' . 5951850 .
		'Auvergne-Rhône-Alpes' . 8064146 .
		'Provence-Alpes-Côte d Azur' . 5077582 .
		'Corse' . 345867 
	}.
	" 2. we add it as a property to the features of our model "
	model addFeaturePropertyKey: 'population' withData: populationDictionary withIdentityKey: 'nom'.
	" 3. we apply styles:
		- red for regions with + 10 000 000 inhabitants
		- orange for regions with + 5 000 000 inhabitants
		- green for others"
	style3 := OGCObject createStyleDictionary: #('green' nil 'green' nil ).
	model := model applyStyle: style3.
	style2 := OGCObject createStyleDictionary: #('orange' nil 'orange' nil ).
	model := model applyStyle: style2 ifFeature: 
		[ :aFeature | ((aFeature properties at: 'population') asNumber) > 5000000 ].
	style1 := OGCObject createStyleDictionary: #('red' nil 'red' nil ).
	model := model applyStyle: style1 ifFeature: 
		[ :aFeature | ((aFeature properties at: 'population') asNumber) > 10000000 ].
	^ model
	
