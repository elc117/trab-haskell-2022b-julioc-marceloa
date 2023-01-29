import System.Random

-- Define o valor máximo de cores
maxRGB :: Int
maxRGB = 255

-- cx, cy, r
type Circ = (Int, Int, Int)

svgBegin :: Float -> Float -> String
svgBegin w h = "<svg width='" ++ show w ++ "' height='" ++ show h ++ "' xmlns='http://www.w3.org/2000/svg'>\n"

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String
svgCircle x y r style =
  "<circle cx='" ++ show x ++ "' cy='" ++ show y ++ "' r='" ++ show r ++ "' fill='" ++ style ++ "' />\n"

randomRGB :: IO String
randomRGB = do
  r <- randomRIO (0, maxRGB)
  g <- randomRIO (0, maxRGB)
  b <- randomRIO (0, maxRGB)
  return $ "rgb(" ++ show r ++ ", " ++ show g ++ ", " ++ show b ++ ", 0.4)"

-- Gera SVG com 2 círculos, um verde e um vermelho, com 0.4 de opacidade.
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.
svgAll :: IO String
svgAll = do
  color1 <- randomRGB
  color2 <- randomRGB
  color3 <- randomRGB
  color4 <- randomRGB
  return $ svgBegin 400 400 ++ svgCircle 100 150 50 color1 ++ svgCircle 170 150 50 color2 ++ svgCircle 230 150 50 color3 ++ svgCircle 290 150 50 color4 ++ svgEnd

main :: IO ()
main = do
  putStrLn "Check output in output.svg"
  svg <- svgAll
  writeFile "output.svg" svg

