import Text.Printf
import System.Random

maxRGB :: Int
maxRGB = 255

type = Circle (Int, Int, Int) -- height, width

-- Circle = (Int, Int, Int)
svgCir :: Circle -> String -> String
svgCir (h,w) style = 
  printf "<circle cx="%d" cy="%d" r="%d" stroke="black" stroke-width="3" fill="red" />" h w style --tirar stroke e fill

svgBegin :: Int -> Int -> String
svgBegin w h = 
  printf "<svg width='%d' height='%d' xmlns='http://www.w3.org/2000/svg'>\n" w h 

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

main :: IO ()
main = do
  color_randgen <- newStdGen
  pos_randgen <- newStdGen
  putStrLn "Check output in output.svg"
  let nrects = 10
      rsize = 50
      gap = 10
      --palette = randomPalette color_randgen (nrects*nrects)
      --rects = genRandomRects pos_randgen nrects rsize gap
      svgfigs = concat $ zipWith svgRect rects (map svgStyle palette)
      imagew = nrects*(rsize+gap)
      (w,h) = (imagew, imagew) -- width,height da imagem SVG
      svgstrings = svgBegin w h ++ svgfigs ++ svgEnd
   in writeFile "output.svg" svgstrings

  

