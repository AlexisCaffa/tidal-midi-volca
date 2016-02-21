module Sound.Tidal.VolcaBass where

import Sound.Tidal.Volca

bass :: ControllerShape
bass = ControllerShape {
  controls = [
     mCC slide_p 5,
     mCC expression_p 11,
     mCC octave_p 40,
     mCC lforate_p 41,
     mCC lfoint_p 42,
     mCC pitch1_p 43,
     mCC pitch2_p 44,
     mCC pitch3_p 45,
     mCC attack_p 46,
     mCC decay_p 47,
     mCC cutoffegint_p 48,
     mCC gate_p 49
     ],
  latency = 0.1
  }


-- short names
sld = slide
lfoi = lfoint
gat = gate_p
ctfg = cutoffegint


-- params
slide :: Pattern Double -> ParamPattern
slide = make' VF slide_p
slide_p = F "slide" (Just 0)

lfoint :: Pattern Double -> ParamPattern
lfoint = make' VF lfoint_p
lfoint_p = F "lfoint" (Just 0)

pitch1 :: Pattern Double -> ParamPattern
pitch1 = make' VF pitch1_p
pitch1_p = F "pitch1" (Just 0)

pitch2 :: Pattern Double -> ParamPattern
pitch2 = make' VF pitch2_p
pitch2_p = F "pitch2" (Just 0)

pitch3 :: Pattern Double -> ParamPattern
pitch3 = make' VF pitch3_p
pitch3_p = F "pitch3" (Just 0)

gate :: Pattern Double -> ParamPattern
gate = make' VF gate_p
gate_p = F "gate" (Just 0)

cutoffegint :: Pattern Double -> ParamPattern
cutoffegint = make' VF cutoffegint_p
cutoffegint_p = F "cutoffegint" (Just 0)


-- general shape for stream
bassShape = toShape bass
