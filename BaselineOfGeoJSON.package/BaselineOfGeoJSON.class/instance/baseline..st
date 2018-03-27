baselines
baseline: spec
	<baseline>
        
	spec for: #common do: [
   		spec 
			package: 'GeoJSON-Core' with: [
				spec requires: #( 'NeoJSON' )];
			package: 'GeoJSON-Voyage' with: [
				spec requires: #( 'GeoJSON-Core' "leaving out voyage for now. needs to be loaded separately" )].
		spec
			project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: '17';
					repository: 'http://mc.stfx.eu/Neo' ].

		spec
			 group: 'default' with: #( 'GeoJSON-Core') ].
			