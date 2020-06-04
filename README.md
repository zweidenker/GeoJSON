# Description

Simple implementation of GeoJSON object model in Pharo.

# Installation

```smalltalk
    Metacello new
    	baseline: 'GeoJSON';
    	repository: 'github://zweidenker/GeoJSON';
    	load.
```

# Usage


Select and inspect the following expression:

```smalltalk
| url file |
url := 'https://github.com/mgaitan/departamentos_argentina/raw/master/departamentos-argentina.json'.
ZnClient new
	systemPolicy;
	url: url;
	numberOfRetries: 2;
	maximumEntitySize: 1024 * 1024 * 1024;
	signalProgress: true;
	contentReader: [ : entity | GeoJSONReader fromString: entity contents ];
	get
```