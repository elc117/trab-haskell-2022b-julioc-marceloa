import Text.Printf
import System.Random -- pesquisar funcionamento

-- import System.Random

-- Define o valor máximo de cores
maxRGB :: Int
maxRGB = 255

-- cx, cy, r
type Circ = (Int, Int, Int)

svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String 
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

-- Gera SVG com 2 círculos, um verde e um vermelho, com 0.4 de opacidade.
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.
svgAll :: String
svgAll = 
  svgBegin 600 600 ++ 
  (svgCircle 100 150 50 "rgb(10, 145, 32, 0.4)") ++ 
  (svgCircle 170 150 50 "rgb(105, 14, 30, 0.4)") ++ 
  (svgCircle 230 150 50 "rgb(105, 14, 30, 0.4)") ++ 
  (svgCircle 290 150 50 "rgb(185, 14, 30, 0.4)") ++ 

  svgEnd

main :: IO ()
main = do
  putStrLn "Check output in backup.svg"
  writeFile "backup.svg" svgAll