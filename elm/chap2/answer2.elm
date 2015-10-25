import Graphics.Element as GE
import Mouse

div position isDown = if isDown then GE.show position else GE.show ""

main = Signal.map2 div Mouse.position Mouse.isDown 
