module Sound.Tidal.VolcaBeats where

import Sound.Tidal.Volca


beats :: ControllerShape
beats = ControllerShape {
  controls = [
     mCC lkick_p 40,
     mCC lsnare_p 41,
     mCC llotom_p 42,
     mCC lhitom_p 43,
     mCC lclhat_p 44,
     mCC lophat_p 45,
     mCC lclap_p 46,
     mCC lclaves_p 47,
     mCC lagogo_p 48,
     mCC lcrash_p 49,
     mCC sclap_p 50,
     mCC sclaves_p 51,
     mCC sagogo_p 52,
     mCC scrash_p 53,
     mCC stuttertime_p 54,
     mCC stutterdepth_p 55,
     mCC tomdecay_p 56,
     mCC clhatdecay_p 57,
     mCC ophatdecay_p 58,
     mCC hatgrain_p 59
     ],
  latency = 0.1
  }


drum = (make' VI note_p) . (noteN <$>)


-- short names
lbd = lkick
lsn = lsnare
llt = llotom
lht = lhitom
lch = lclhat
loh = lophat
lcp = lclap
lcl = lclaves
lag = lagogo
lcr = lcrash
scp = sclap
scl = sclaves
sag = sagogo
scr = scrash
stt = stuttertime
std = stutterdepth
dt = tomdecay
dch = clhatdecay
doh = ophatdecay
hg = hatgrain

noteN :: String -> Int
noteN "bd"  = 36
noteN "sn"  = 38
noteN "lt"  = 43
noteN "ht"  = 50
noteN "ch"  = 42
noteN "oh"  = 46
noteN "cp"  = 39
noteN "cl"  = 75
noteN "ag"  = 67
noteN "cr"  = 49
noteN _ = 0


-- params
lkick :: Pattern Double -> ParamPattern
lkick = make' VF lkick_p
lkick_p = F "lkick" (Just 0)

lsnare :: Pattern Double -> ParamPattern
lsnare = make' VF lsnare_p
lsnare_p = F "lsnare" (Just 0)

llotom :: Pattern Double -> ParamPattern
llotom = make' VF llotom_p
llotom_p = F "llotom" (Just 0)

lhitom :: Pattern Double -> ParamPattern
lhitom = make' VF lhitom_p
lhitom_p = F "lhitom" (Just 0)

lclhat :: Pattern Double -> ParamPattern
lclhat = make' VF lclhat_p
lclhat_p = F "lclhat" (Just 0)

lophat :: Pattern Double -> ParamPattern
lophat = make' VF lophat_p
lophat_p = F "lophat" (Just 0)

lclap :: Pattern Double -> ParamPattern
lclap = make' VF lclap_p
lclap_p = F "lclap" (Just 0)

lclaves :: Pattern Double -> ParamPattern
lclaves = make' VF lclaves_p
lclaves_p = F "lclaves" (Just 0)

lagogo :: Pattern Double -> ParamPattern
lagogo = make' VF lagogo_p
lagogo_p = F "lagogo" (Just 0)

lcrash :: Pattern Double -> ParamPattern
lcrash = make' VF lcrash_p
lcrash_p = F "lcrash" (Just 0)

sclap :: Pattern Double -> ParamPattern
sclap = make' VF sclap_p
sclap_p = F "sclap" (Just 0)

sclaves :: Pattern Double -> ParamPattern
sclaves = make' VF sclaves_p
sclaves_p = F "sclaves" (Just 0)

sagogo :: Pattern Double -> ParamPattern
sagogo = make' VF sagogo_p
sagogo_p = F "sagogo" (Just 0)

scrash :: Pattern Double -> ParamPattern
scrash = make' VF scrash_p
scrash_p = F "scrash" (Just 0)

stuttertime :: Pattern Double -> ParamPattern
stuttertime = make' VF stuttertime_p
stuttertime_p = F "stuttertime" (Just 0)

stutterdepth :: Pattern Double -> ParamPattern
stutterdepth = make' VF stutterdepth_p
stutterdepth_p = F "stutterdepth" (Just 0)

tomdecay :: Pattern Double -> ParamPattern
tomdecay = make' VF tomdecay_p
tomdecay_p = F "tomdecay" (Just 0)

clhatdecay :: Pattern Double -> ParamPattern
clhatdecay = make' VF clhatdecay_p
clhatdecay_p = F "clhatdecay" (Just 0)

ophatdecay :: Pattern Double -> ParamPattern
ophatdecay = make' VF ophatdecay_p
ophatdecay_p = F "ophatdecay" (Just 0)

hatgrain :: Pattern Double -> ParamPattern
hatgrain = make' VF hatgrain_p
hatgrain_p = F "hatgrain" (Just 0)


-- general shape for stream
beatsShape = toShape beats
