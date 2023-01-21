import Text.Printf
maxRGB :: Int
maxRGB = 255

type Rect = (Int, Int, Int, Int) -- x, y, width, height

svgRect :: Rect -> String -> String
svgRect (x, y, w, h) style = 
      printf "<rect x=50 y=50 width= 50 height=100 style='%s' />\n" x y w h style

svgBegin :: Int -> Int -> String
svgBegin w h = 
  printf "<svg width='%d' height='%d' xmlns='http://www.w3.org/2000/svg'>\n" w h 

svgEnd :: String
svgEnd = "</svg>"

svgStyle :: (Int,Int,Int) -> String
svgStyle (r,g,b) = printf "fill:rgb(%d,%d,%d); mix-blend-mode: screen;" r g b


main :: IO ()
main = do
  putStrLn "Check output in output.svg"

svgstrings = svgBegin w h ++ svgRect ++ svgEnd in writeFile "output.svg" svgstrings

    

