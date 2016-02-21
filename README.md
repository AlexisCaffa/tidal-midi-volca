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

devices <- midiDevices

(v1, vt1) <- midiSetters devices "SimpleSynth virtual input" 1 volcaKeysController getNow

v1 $ slow 4 $ note (tom "a3 e4")
  # lforate "0.8"
```

you can also load `Sound.Tidal.VolcaBass` and `Sound.Tidal.VolcaBeats`.
See there corresponding params in [the source files](Sound/Tidal/)