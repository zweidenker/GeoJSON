baselines
baseline: spec
	<baseline>
        
	spec for: #common do: [
		self 
			neoJson: spec;
			ogc: spec;
			geography: spec.
   		spec 
			package: 'GeoJSON-Core' with: [
				spec requires: #( 'NeoJSON' 'Geography' 'OGC')];
			package: 'GeoJSON-Core-Tests' with: [
				spec requires: #( 'GeoJSON-Core' )];
			package: 'GeoJSON-Voyage' with: [
				spec requires: #( 'GeoJSON-Core' "leaving out voyage for now. needs to be loaded separately" )].

		spec
			 group: 'default' with: #( 'GeoJSON-Core' 'GeoJSON-Core-Tests') ].
			