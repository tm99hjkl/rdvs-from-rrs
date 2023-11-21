module RDVS where

import Common
import RRS

_SKG :: PP -> (SPK, SSK)
_SKG pp = RRS._KG pp

_VKG :: PP -> (VPK, VSK)
_VKG pp = RRS._KG pp

_DVSig :: (PP, SPK, VPK, SSK, Msg) -> Sig
_DVSig (pp, spk, vpk, ssk, m) = RRS._RSig (pp, [spk, vpk], ssk, m)

_Sim :: (PP, SPK, VPK, VSK, Msg) -> Sig
_Sim (pp, spk, vpk, vsk, m) = RRS._RSig (pp, [spk, vpk], vsk, m)

_Rpd :: (PP, SPK, VPK, VSK, Msg, Sig) -> Rpd
_Rpd (pp, spk, vpk, vsk, m, s) = RRS._Rpd (pp, [spk, vpk], vsk, m, s)

_RpdVrf :: (PP, SPK, VPK, Msg, Sig, Rpd) -> Bool
_RpdVrf (pp, spk, vpk, m, sig, xi) = RRS._RpdVrf (pp, [spk, vpk], m, sig, xi)
