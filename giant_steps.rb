require_relative 'pitch'

module GiantSteps
  class PitchMap
    ROOTS = [[:B,  3], [:D,  4], [:G,  3], [:Bf, 3],
             [:Ef, 4], [:Ef, 4], [:A,  3], [:D,  4],
             [:G,  3], [:Bf, 3], [:Ef, 4], [:Fs, 3],
             [:B,  3], [:B,  3], [:F,  3], [:Bf, 3],
             [:Ef, 4], [:Ef, 4], [:A,  3], [:D,  4],
             [:G,  3], [:G,  3], [:Cs, 4], [:Fs, 3],
             [:B,  3], [:B,  3], [:F,  3], [:Bf, 3],
             [:Ef, 4], [:Ef, 4], [:Cs, 4], [:Fs, 3]]

    def root_pitches
      @root_pitches ||= ROOTS.map { |pitch_tuple| Pitch.new(pitch_tuple[0], pitch_tuple[1]) }
    end

    MELODY = [[:Fs, 6], [:D,  6], [:B,  5], [:G,  5],
              [:Bf, 5], [:Bf, 5], [:B,  5], [:A,  5],
              [:D,  6], [:Bf, 5], [:G,  5], [:Ef, 5],
              [:Fs, 5], [:Fs, 5], [:G,  5], [:F,  5],
              [:Bf, 5], [:Bf, 5], [:B,  5], [:A,  5],
              [:D,  6], [:D,  6], [:Ds, 6], [:Ds, 6],
              [:Fs, 6], [:Fs, 6], [:G,  6], [:G,  6],
              [:Bf, 6], [:Bf, 6], [:Fs, 6], [:Fs, 6]]

    def melody_pitches
      @melody_pitches ||= MELODY.map { |pitch_tuple| Pitch.new(pitch_tuple[0], pitch_tuple[1]) }
    end
  end
end
