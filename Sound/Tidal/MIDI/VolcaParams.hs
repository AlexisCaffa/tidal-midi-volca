module Sound.Tidal.MIDI.VolcaParams where

import Sound.Tidal.Params
import Sound.Tidal.MIDI.Control
import Sound.Tidal.MIDI.Params
import Sound.Tidal.Pattern
import Sound.Tidal.Stream
import Sound.Tidal.Params

octave :: Pattern Double -> ParamPattern
octave = make' VF octave_p
octave_p = F "octave" (Just 0)

vcoegint :: Pattern Double -> ParamPattern
vcoegint = make' VF vcoegint_p
vcoegint_p = F "vcoegint" (Just 0)

vcfegint :: Pattern Double -> ParamPattern
vcfegint = make' VF vcfegint_p
vcfegint_p = F "vcfegint" (Just 0)

lforate :: Pattern Double -> ParamPattern
lforate = make' VF lforate_p
lforate_p = F "lforate" (Just 0)

attack :: Pattern Double -> ParamPattern
attack = make' VF attack_p
attack_p = F "attack" (Just 0)

decay :: Pattern Double -> ParamPattern
decay = make' VF decay_p
decay_p = F "decay" (Just 0)

-- short names
expr = expression
oct  = octave
ctf  = cutoff
lfo  = lforate
att  = attack
dec  = decay
