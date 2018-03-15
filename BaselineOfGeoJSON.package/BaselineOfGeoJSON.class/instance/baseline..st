baselines
baseline: spec
	<baseline>
        
	spec for: #common do: [
   		spec 
			package: 'GeoJSON-Core' with: [
				spec requires: #( 'NeoJSON' )].
		spec
			project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: '17';
					repository: 'http://mc.stfx.eu/Neo' ].

		spec
			 group: 'default' with: #( 'GeoJSON-Core') ].
			