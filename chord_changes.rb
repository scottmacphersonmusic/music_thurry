require 'rubygems'
require 'bundler/setup'

require 'music_theory'
require_relative 'pitch'
require_relative 'giant_steps'

root_pitches = GiantSteps::PitchMap.new.root_pitches
melody_pitches = GiantSteps::PitchMap.new.melody_pitches

roots = root_pitches.map { |note| MusicTheory::Note.new(frequency: note.frequency, duration: 0.33, distort: true) }
melody = melody_pitches.map { |note| MusicTheory::Note.new(frequency: note.frequency, duration: 0.33, distort: true) }

melody_samples = melody.map(&:samples).flatten
root_samples = roots.map(&:samples).flatten

harmonization = MusicTheory::Harmonize.new(melody_samples, root_samples)

MusicTheory::Play.new([harmonization], { output_file_name: 'giant_steps' })
