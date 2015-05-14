require 'rubygems'
require 'bundler/setup'

require 'music_theory'
require_relative 'pitch'
require_relative 'giant_steps'


root_pitches = GiantSteps::PitchMap.new.root_pitches

melody_pitches = GiantSteps::PitchMap.new.melody_pitches

melody_pitches.each do |item|
  freq = item.frequency
  note = MusicTheory::Note.new frequency: freq, duration: 0.33, output_file_name: 'sine_jams', distort: true
  note.play
end
