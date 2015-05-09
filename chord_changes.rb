require 'rubygems'
require 'bundler/setup'

require 'music_theory'
require_relative 'pitch'

roots = [[:B,  3],
         [:D,  4],
         [:G,  3],
         [:Bf, 3],
         [:Ef, 4],
         [:Ef, 4],
         [:A,  3],
         [:D,  4],
         [:G,  3],
         [:Bf, 3],
         [:Ef, 4],
         [:Fs, 3],
         [:B,  3],
         [:B,  3],
         [:F,  3],
         [:Bf, 3],
         [:Ef, 4],
         [:Ef, 4],
         [:A,  3],
         [:D,  4],
         [:G,  3],
         [:G,  3],
         [:Cs, 4],
         [:Fs, 3],
         [:B,  3],
         [:B,  3],
         [:F,  3],
         [:Bf, 3],
         [:Ef, 4],
         [:Ef, 4],
         [:Cs, 4],
         [:Fs, 3]]


roots.each do |item|
  tone = Pitch.new item[0], item[1]
  freq = tone.frequency
  note = MusicTheory::Note.new frequency: freq, duration: 0.33, output_file_name: 'giant_steps', distort: true
  note.play
end
