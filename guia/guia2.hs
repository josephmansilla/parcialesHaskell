-- APLICACION PARCIAL
-- Ejercicio 1
siguiente :: Integer -> Integer
siguiente = (+1)

-- Ejercicio 2
mitad :: Double -> Double
mitad = (/2)

-- Ejercicio 3
inversa :: Fractional a => a -> a
inversa x = 1 / x

inversaParcial :: Double -> Double
inversaParcial = inversa

-- Ejercicio 4
triple :: Integer -> Integer
triple = (*3)

-- Ejercicio 5
pos :: (Ord a, Num a) => a -> Bool
pos x = x > 0
esNumeroPositivo :: Integer -> Bool
esNumeroPositivo = pos

-- COMPOSICION
-- Ejercicio 6
esMultiploDe :: Integral b => b -> b -> Bool
esMultiploDe n = (==0) . (n `mod`)

-- Ejercicio 7

esBisiesto n = (not(n `esMultiploDe` 100) || n `esMultiploDe` 4) && n `esMultiploDe` 400

-- Ejercicio 8
inversaRaizCuadrada :: Double -> Double
inversaRaizCuadrada = inversaParcial . sqrt

-- Ejercicio 9
incrementMCuadradoN:: Double -> Double -> Double
incrementMCuadradoN m = (+m).(^2) 

-- Ejercicio 10
elevar :: (Integral b, Num a) => a -> b -> a
elevar n m = n ^ m

esResultadoPar :: (Integral b, Integral a) => b -> a -> Bool
esResultadoPar n = even . (n `elevar`)