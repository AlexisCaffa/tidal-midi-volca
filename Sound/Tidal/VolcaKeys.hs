module Sound.Tidal.VolcaKeys where

import Sound.Tidal.Volca


keys :: ControllerShape
keys = ControllerShape {
  controls = [
     mCC portamento_p 5,
     mCC expression_p 11,
     mCC voice_p 40,
     mCC octave_p 41,
     mCC detune_p 42,
     mCC vcoegint_p 43,
     mCC cutoff_p 44,
     mCC vcfegint_p 45,
     mCC lforate_p 46,
     mCC lfopitchint_p 47,
     mCC lfocutoffint_p 48,
     mCC attack_p 49,
     mCC decay_p 50,
     mCC sustain_p 51,
     mCC dtime_p 52,
     mCC dfeedback_p 53
     ],
  latency = 0.01
  }


-- short names
por  = portamento
voi  = voice
det  = detune
vco  = vcoegint
vcf  = vcfegint
lfop = lfopitchint
lfoc = lfocutoffint
sus  = sustain
dt   = dtime
df   = dfeedback


-- params
lfopitchint :: Pattern Double -> ParamPattern
lfopitchint = make' VF lfopitchint_p
lfopitchint_p = F "lfopitchint" (Just 0)

lfocutoffint :: Pattern Double -> ParamPattern
lfocutoffint = make' VF lfocutoffint_p
lfocutoffint_p = F "lfocutoffint" (Just 0)

portamento :: Pattern Double -> ParamPattern
portamento = make' VF portamento_p
portamento_p = F "portamento" (Just 0)

voice :: Pattern Double -> ParamPattern
voice = make' VF voice_p
voice_p = F "voice" (Just 0)

detune :: Pattern Double -> ParamPattern
detune = make' VF detune_p
detune_p = F "detune" (Just 0)

dtime :: Pattern Double -> ParamPattern
dtime = make' VF dtime_p
dtime_p = F "dtime" (Just 0)

dfeedback :: Pattern Double -> ParamPattern
dfeedback = make' VF dfeedback_p
dfeedback_p = F "dfeedback" (Just 0)

sustain :: Pattern Double -> ParamPattern
sustain = make' VF sustain_p
sustain_p = F "sustain" (Just 0)


-- general shape for stream
keysShape = toShape keys
