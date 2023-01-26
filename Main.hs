import Text.Printf
import System.Random -- pesquisar funcionamento

-- import System.Random

-- Define o valor máximo de cores
maxRGB :: Int
maxRGB = 255
-- r, cx, cy
type Circ = (Int, Int, Int)

-- Strings SVG
svgCircle :: Int -> Int -> Int -> String -> String 
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style
 

--Atributos de estilo 
svgStyle :: (Int, Int, Int) -> String 
svgStyle (r, g , b) = printf "fill:rgb(%d,%d,%d);stroke-width:3;stroke:rgb(%d,%d,%d)" r g b

-- String inicial SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%f' height='%f' xmlns='http://www.w3.org/2000/svg'>\n" w h

-- String final SVG
svgEnd :: String
svgEnd = "</svg>"

svgAll :: String
svgAll = svgBegin 500 500 ++ 
  svgCircle 100 100 50 "rgb(5, 100, 30, 0.4)" ++
  svgCircle 150 100 50  "rgb(10, 150, 30, 0.4)" ++
  svgCircle 200 100 50  "rgb(50,100,200, 0.4)" ++
  svgCircle 250 100 50  "rgb(250,100,300, 0.4)" ++
  svgEnd

main :: IO ()
main = do 
putStrLn "Check output in output.svg"
writeFile "output.svg" svgAll

