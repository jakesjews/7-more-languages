import Graphics.Element as GE
import Mouse

div position mouseIsDown = GE.show ((toString position) ++ " " ++ (toString mouseIsDown))

main = Signal.map2 div Mouse.position Mouse.isDown

