import System.Random -- pesquisar funcionamento
import Text.Printf

-- import System.Random

-- Define o valor máximo de cores
maxRGB :: Int
maxRGB = 255
zero = 0

-- r, cx, cy
type Circ = (Int, Int, Int)

-- String inicial SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%f' height='%f' xmlns='http://www.w3.org/2000/svg'>\n" w h

-- String final SVG
svgEnd :: String
svgEnd = "</svg>"

svgAll :: String
svgAll =
  svgBegin 500 500
    ++ svgCircle 100 100 50 "rgb(255, 0, 0, 0.4)"
    ++ svgCircle 170 100 50 "rgb(0, 255, 0, 0.4)"
    ++ svgCircle 240 100 50 "rgb(0,0,255, 0.4)"
    ++ svgEnd

-- Nova função = gera os círculos com cores aleatórias

--genRandomColors :: Random (r g b) => Int -> r g b
--genRandomColors seed = randoms (mkStdGen seed) 

-- Strings SVG
svgCircle :: Int -> Int -> Int -> String -> String
svgCircle x y r style =
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

-- Atributos de estilo
svgStyle :: (Int, Int, Int) -> String
svgStyle (r, g, b) = printf "fill:rgb(0,0,0);stroke-width:3;stroke:rgb(%d,%d,%d)" r g b

main :: IO ()
main = do
  genColors <- newStdGen
  let n = randoms genColors :: [Int]
  putStrLn "Check output in output.svg"
  writeFile "output.svg" svgAll
    