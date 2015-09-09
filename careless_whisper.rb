require 'music_theory'
require 'wavefile'

module CarelessWhisper
  class PitchMap
    MELODY = [[:E, 6],  [:D, 6],  [:A, 5], [:F, 5],
              [:E, 6],  [:D, 6],  [:A, 5], [:F, 5],
              [:C, 6],  [:Bf, 5], [:F, 5], [:D, 5],
              [:C, 6],  [:Bf, 5], [:F, 5],
              [:Bf, 5], [:A, 5],  [:F, 5], [:D, 5], [:Bf, 4],
              [:A, 4],  [:Bf, 4], [:C, 5], [:D, 5], [:E, 5], [:F, 5], [:G, 5], [:A, 5]]

    def melody_pitches
      MELODY.map { |p| Pitch.new(p[0], p[1]) }
    end
  end
end

pm = CarelessWhisper::PitchMap.new
pitches = pm.melody_pitches
melody = pitches.map { |note| MusicTheory::Note.new(frequency: note.frequency, duration: 0.5) }
samples = melody.map(&:samples).flatten

harmonization = MusicTheory::Harmonize.new(samples)

MusicTheory::Play.new([harmonization], output_file_name: "careless_whisper")


# TODO:  work out durations and envelopes for melody notes (how to do rests? duration with envelope going from 0 to 0?)
