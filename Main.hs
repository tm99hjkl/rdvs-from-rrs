module Main (main) where

import RDVS
import Common

main :: IO ()
main = do
  putStrLn "pp is given."
  let pp = PP

  putStrLn "generate the signer's key pair."
  let (spk, ssk) = _SKG pp

  putStrLn "generate the designated verifier's key pair."
  let (vpk, vsk) = _VKG pp

  putStrLn "DV generates a forged signature."
  let msg = "I'll give you 1000 billion yen."
  let fls_sig = _Sim (pp, spk, vpk, vsk, msg)

  putStrLn "Signer generates a repudiation of the fls_sig."
  let xi = _Rpd (pp, spk, vpk, ssk, msg, fls_sig)

  putStrLn "Some one verify the repudiation."
  let b = _RpdVrf (pp, spk, vpk, msg, fls_sig, xi)

  putStrLn $ if b then "The repudiation is verified ok." 
                  else "The repudiation is verified NG."
  return ()
