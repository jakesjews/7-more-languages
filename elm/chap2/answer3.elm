import Graphics.Element exposing (..)
import Mouse
import Window

getPosition (x, y) = middleAt (absolute x) (absolute y)
displayedImage = image 100 100 "https://pbs.twimg.com/profile_images/54789364/JPG-logo-highres.jpg"
showImage mouseCoords (w, h) = container w h (getPosition mouseCoords) displayedImage
clickPosition = Signal.sampleOn Mouse.clicks Mouse.position
main = Signal.map2 showImage clickPosition Window.dimensions
