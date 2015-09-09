# write a script to produce the samples array from a MusicTheory::Note and store it in an extensionless file
require 'rubygems'
require 'bundler/setup'
require 'music_theory'

note = MusicTheory::Note.new

File.open('note_samples_array', 'w+') { |f| f.write(note.samples) }
