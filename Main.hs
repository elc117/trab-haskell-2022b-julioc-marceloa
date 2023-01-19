import Text.Printf
maxRGB :: Int
maxRGB = 255

type Rect = (Int, Int, Int, Int) -- x, y, width, height

svgRect :: Rect -> String -> String
svgRect (x, y, w, h) style = 
      printf "<rect x=50 y=50 width= 50 height=100 style='%s' />\n" x y w h style

