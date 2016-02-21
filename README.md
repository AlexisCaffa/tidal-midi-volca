Tidal MIDI bindings for Volca synthesizer series.

# Requirements

tidal >= 0.7

### (future) installation

```shell
cabal install tidal-midi-volca
```

#### from source

```shell
git clone https://github.com/tidalcycles/tidal-midi-volca
cd tidal-midi-volca
cabal install
```

### Usage


```haskell
import Sound.Tidal.Volca
import Sound.Tidal.VolcaKeys
import Sound.Tidal.VolcaBass
import Sound.Tidal.VolcaBeats

devices <- midiDevices
(kys, kt) <- midiSetters devices "SimpleSynth virtual input" 1 keys getNow
(bss, bst) <- midiSetters devices "SimpleSynth virtual input" 1 bass getNow
(bts, btt) <- midiSetters devices "SimpleSynth virtual input" 1 beats getNow


kys $ slow 4 $ note (tom "a3 e4")
  # lforate "0.8"

bss $ note (tom "e2") # ctfg "0.2"


bts $ drum "bd" # lcp "0.3"
```

see the source of [Volca Keys](Sound/Tidal/VolcaKeys.hs), [Volca Bass](Sound/Tidal/VolcaBass.hs) and [Volca Beats](Sound/Tidal/VolcaBeats.hs) for a list of params.