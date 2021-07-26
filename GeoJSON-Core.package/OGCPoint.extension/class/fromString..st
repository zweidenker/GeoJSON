*GeoJSON-Core
fromString: aString
	| tuple |
	tuple := $, split: aString.
	^ self new
		x: tuple first trimBoth;
		y: tuple second trimBoth