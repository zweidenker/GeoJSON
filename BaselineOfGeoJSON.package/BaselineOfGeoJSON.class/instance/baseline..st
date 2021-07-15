baselines
baseline: spec
	<baseline>
        
	spec for: #common do: [
		self geography: spec.
   		spec 
			package: 'GeoJSON-Core' with: [
				spec requires: #( 'NeoJSON' 'Geography' 'OGC-Pharo')];
			package: 'GeoJSON-Core-Tests' with: [
				spec requires: #( 'GeoJSON-Core' )];
			package: 'GeoJSON-Voyage' with: [
				spec requires: #( 'GeoJSON-Core' "leaving out voyage for now. needs to be loaded separately" )].
		spec
			baseline: 'NeoJSON' 
			with: [ spec repository: 'github://svenvc/NeoJSON:master/repository' ].
			
		spec
			baseline: 'OGC-Pharo' 
			with: [ spec repository: 'github://pharo-GIS/OGC-Pharo:master/repository' ].

		spec
			 group: 'default' with: #( 'GeoJSON-Core' 'GeoJSON-Core-Tests') ].
			