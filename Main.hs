import Text.Printf

-- import System.Random

-- Define o valor máximo de cores
maxRGB :: Int
maxRGB = 255

-- cx, cy, r
type Circ = (Int, Int, Int)

-- Strings SVG
svgCirc :: Circ -> String -> String
svgCirc (cx, cy, r) style =
  printf "<circle cx='%d' cy='%d' r='%d' s='silver' fill='white'/>" cx cy r style

-- String inicial SVG
-- svgBegin :: Float -> Float -> String
svgBegin :: Int -> Int -> String
svgBegin w h =
  printf "<svg width='%d' height='%d' xmlns='http://www.w3.org/2000/svg'>\n" w h

-- String final SVG
svgEnd :: String
svgEnd = "</svg>"

-- svgStyle :: (String, Int, String) -> String
-- svg

-- Paleta formada por apenas 3 cores (Red, Green, Blue) que se repetem ciclicamente
rgbOnlyPalette :: Int -> [(Int, Int, Int)]
rgbOnlyPalette n = take n $ cycle [(maxRGB, 0, 0), (0, maxRGB, 0), (0, 0, maxRGB)]

--------------------------------------------------------------------------
-- Função principal que gera arquivo com imagem SVG
--------------------------------------------------------------------------
main :: IO ()
main = do
  putStrLn "Check output in output.svg"

  let ncircles = 3
      gap = 5
        svgstrings = svgBegin w h ++ svgfigs ++ svgEnd in writeFile "output.svg" svgstrings
