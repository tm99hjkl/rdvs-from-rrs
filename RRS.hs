module RRS where

import Common

type PK  = Key
type SK  = Key
type SPK = Key
type SSK = Key
type VPK = Key
type VSK = Key
type Ring = [PK]

_KG :: PP -> (PK, SK)
_KG PP = (Key, Key)

_RSig :: (PP, Ring, SSK, Msg) -> Sig
_RSig _ = Sig

_Vrf :: (PP, SPK, VPK, VSK, Msg, Sig) -> Bool
_Vrf _ = True

_Rpd :: (PP, Ring, VSK, Msg, Sig) -> Rpd
_Rpd _ = Rpd

_RpdVrf :: (PP, Ring, Msg, Sig, Rpd) -> Bool
_RpdVrf _ = True

