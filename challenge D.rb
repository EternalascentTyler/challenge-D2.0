use_bpm 100


define :ukulele_chords do
  use_synth :pluck
  play_chord chord(:c, :major), release: 0.8, amp: 1.5
  sleep 0.5
  play_chord chord(:g, :major), release: 0.8, amp: 1.5
  sleep 0.5
  play_chord chord(:f, :major), release: 0.8, amp: 1.5
  sleep 0.5
  play_chord chord(:c, :major), release: 0.8, amp: 1.5
  sleep 1
end


define :spongebob_melody do
  use_synth :fm
  
  play :e5, slide: 0.2, release: 0.5
  sleep 0.5
  play :d5, slide: 0.2, release: 0.5
  sleep 0.5
  play :c5, slide: 0.2, release: 0.5
  sleep 0.5
  play :b4, slide: 0.2, release: 0.5
  sleep 0.5
  play :a4, release: 1
  sleep 1
end


live_loop :drums do
  sample :drum_cymbal_closed, amp: 0.5
  sleep 0.5
  sample :drum_snare_soft, amp: 0.5
  sleep 0.5
end

live_loop :ocean do
  sample :ambi_haunted_hum, rate: 0.3, amp: 0.3
  sleep 4
end


live_loop :sadoutro do
  ukulele_chords
  spongebob_melody
  sleep 2
end

#i tried my best
