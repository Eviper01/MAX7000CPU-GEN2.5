SamacSys ECAD Model
15925936/555595/2.49/8/0/Undefined or Miscellaneous

DESIGNSPARK_INTERMEDIATE_ASCII

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "c105.7_h65.7"
		(holeDiam 0.657)
		(padShape (layerNumRef 1) (padShapeType Ellipse)  (shapeWidth 1.057) (shapeHeight 1.057))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 1.057) (shapeHeight 1.057))
	)
	(padStyleDef "s105.7_h65.7"
		(holeDiam 0.657)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 1.057) (shapeHeight 1.057))
		(padShape (layerNumRef 16) (padShapeType Rect)  (shapeWidth 1.057) (shapeHeight 1.057))
	)
	(textStyleDef "Default"
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 50 mils)
			(strokeWidth 5 mils)
		)
	)
	(patternDef "DIP795W46P254L952H572Q8N" (originalName "DIP795W46P254L952H572Q8N")
		(multiLayer
			(pad (padNum 1) (padStyleRef s105.7_h65.7) (pt -3.975, 3.81) (rotation 90))
			(pad (padNum 2) (padStyleRef c105.7_h65.7) (pt -3.975, 1.27) (rotation 90))
			(pad (padNum 3) (padStyleRef c105.7_h65.7) (pt -3.975, -1.27) (rotation 90))
			(pad (padNum 4) (padStyleRef c105.7_h65.7) (pt -3.975, -3.81) (rotation 90))
			(pad (padNum 5) (padStyleRef c105.7_h65.7) (pt 3.975, -3.81) (rotation 90))
			(pad (padNum 6) (padStyleRef c105.7_h65.7) (pt 3.975, -1.27) (rotation 90))
			(pad (padNum 7) (padStyleRef c105.7_h65.7) (pt 3.975, 1.27) (rotation 90))
			(pad (padNum 8) (padStyleRef c105.7_h65.7) (pt 3.975, 3.81) (rotation 90))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 0, 0) (textStyleRef "Default") (isVisible True))
		)
		(layerContents (layerNumRef 30)
			(line (pt -4.906 5.14) (pt 4.906 5.14) (width 0.05))
		)
		(layerContents (layerNumRef 30)
			(line (pt 4.906 5.14) (pt 4.906 -5.14) (width 0.05))
		)
		(layerContents (layerNumRef 30)
			(line (pt 4.906 -5.14) (pt -4.906 -5.14) (width 0.05))
		)
		(layerContents (layerNumRef 30)
			(line (pt -4.906 -5.14) (pt -4.906 5.14) (width 0.05))
		)
		(layerContents (layerNumRef 28)
			(line (pt -3.302 4.89) (pt 3.302 4.89) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt 3.302 4.89) (pt 3.302 -4.89) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt 3.302 -4.89) (pt -3.302 -4.89) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt -3.302 -4.89) (pt -3.302 4.89) (width 0.1))
		)
		(layerContents (layerNumRef 28)
			(line (pt -3.302 3.62) (pt -2.032 4.89) (width 0.1))
		)
		(layerContents (layerNumRef 18)
			(line (pt -4.504 4.89) (pt 3.302 4.89) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -3.302 -4.89) (pt 3.302 -4.89) (width 0.2))
		)
	)
	(symbolDef "AT24C64B-10PU-2_7" (originalName "AT24C64B-10PU-2_7")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 230 mils -25 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 2) (pt 0 mils -100 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 230 mils -125 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 3) (pt 0 mils -200 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 230 mils -225 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 4) (pt 0 mils -300 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 230 mils -325 mils) (rotation 0]) (justify "Left") (textStyleRef "Default"))
		))
		(pin (pinNum 5) (pt 1000 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 770 mils -25 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 6) (pt 1000 mils -100 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 770 mils -125 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 7) (pt 1000 mils -200 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 770 mils -225 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(pin (pinNum 8) (pt 1000 mils -300 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName false)) (pinName (text (pt 770 mils -325 mils) (rotation 0]) (justify "Right") (textStyleRef "Default"))
		))
		(line (pt 200 mils 100 mils) (pt 800 mils 100 mils) (width 6 mils))
		(line (pt 800 mils 100 mils) (pt 800 mils -400 mils) (width 6 mils))
		(line (pt 800 mils -400 mils) (pt 200 mils -400 mils) (width 6 mils))
		(line (pt 200 mils -400 mils) (pt 200 mils 100 mils) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 850 mils 300 mils) (justify Left) (isVisible True) (textStyleRef "Default"))

	)
	(compDef "AT24C64B-10PU-2.7" (originalName "AT24C64B-10PU-2.7") (compHeader (numPins 8) (numParts 1) (refDesPrefix U)
		)
		(compPin "1" (pinName "A0") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "2" (pinName "A1") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "3" (pinName "A2") (partNum 1) (symPinNum 3) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "4" (pinName "GND") (partNum 1) (symPinNum 4) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "8" (pinName "VCC") (partNum 1) (symPinNum 5) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "7" (pinName "WP") (partNum 1) (symPinNum 6) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "6" (pinName "SCL") (partNum 1) (symPinNum 7) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "5" (pinName "SDA") (partNum 1) (symPinNum 8) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "AT24C64B-10PU-2_7"))
		(attachedPattern (patternNum 1) (patternName "DIP795W46P254L952H572Q8N")
			(numPads 8)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
				(padNum 3) (compPinRef "3")
				(padNum 4) (compPinRef "4")
				(padNum 5) (compPinRef "5")
				(padNum 6) (compPinRef "6")
				(padNum 7) (compPinRef "7")
				(padNum 8) (compPinRef "8")
			)
		)
		(attr "Mouser Part Number" "")
		(attr "Mouser Price/Stock" "")
		(attr "Manufacturer_Name" "Microchip")
		(attr "Manufacturer_Part_Number" "AT24C64B-10PU-2.7")
		(attr "Description" "Atmel AT24C64B-10PU-2.7 EEPROM Memory, 64kbit, 0.6us, 1.8  5.5 V 8-Pin PDIP")
		(attr "Datasheet Link" "")
		(attr "Height" "5.715 mm")
	)

)