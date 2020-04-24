reading
next
	json := (NeoJSONReader on: stream) next.
	^ json readGeoJSONFrom: self 