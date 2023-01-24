import Text.Printf
import System.Random -- pesquisar funcionamento

-- import System.Random

-- Define o valor máximo de cores
maxRGB :: Int
maxRGB = 255

-- cx, cy, r
type Circ = (Int, Int, Int)

-- Strings SVG
svgCirc :: Circ -> String -> String 
svgCirc (cx,cy,r) style  =
  printf "<circle cx='%d' cy='%d' r='%d' style='s'/>" cx cy r style


--Atributos de estilo 
svgStyle :: (String, Int, String) -> String --stroke="black" stroke-width="3" fill="red"
svgStyle (r, g , b) = printf "fill:rgb(%d,%d,%d);stroke-width:3;stroke:rgb(%d,%d,%d)" r g b

-- String inicial SVG
svgBegin :: Int -> Int -> String
svgBegin w h = printf "<svg width='%d' height='%d' xmlns='http://www.w3.org/2000/svg'>\n" w h

-- String final SVG
svgEnd :: String
svgEnd = "</svg>"

main :: IO ()
main = do 
  putStrLn "Check output in output.svg"
  let 
    w = 400
    h = 400
    svgstrings = svgBegin w h ++ svgCirc  ++ svgEnd in writeFile "output.svg" svgstrings