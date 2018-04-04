reading
fromString: aString
	| tuple |
	tuple := $, split: aString.
	^ self new
		latitude: tuple first trimBoth;
		longitude: tuple second trimBoth