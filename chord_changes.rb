require 'rubygems'
require 'bundler/setup'

require 'music_theory'
require_relative 'pitch'
require_relative 'giant_steps'

PitchMap::ROOTS.each do |item|
  tone = Pitch.new item[0], item[1]
  freq = tone.frequency
  note = MusicTheory::Note.new frequency: freq, duration: 0.33, output_file_name: 'sin_jams', distort: true
  note.play
end
