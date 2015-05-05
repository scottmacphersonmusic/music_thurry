class Pitch

  attr_accessor :note, :octave

  def initialize(note, octave)
    @note   = note
    @octave = octave
  end

  # return the number of semitones away from A4
  def semitones
    notes = {B:   2,
             Bf:  1,
             As:  1,
             A:   0,
             Af: -1,
             Gs: -1,
             G:  -2,
             Gf: -3,
             Fs: -3,
             F:  -4,
             E:  -5,
             Ef: -6,
             Ds: -6,
             D:  -7,
             Df: -8,
             Cs: -8,
             C:  -9}

    octave_diff = @octave - 4
    octave_diff * 12 + notes[@note]
  end

  def frequency
    # f(n) = f0 * (a)**n where a = 2**(1.0/12)
    a = 2**(1.0/12)
    n = self.semitones
    frequency = 440 * a**n
    frequency.round(3)
  end
end

# b = Pitch.new :Ds, 2
# puts b.semitones

# c = Pitch.new :Gf, 5
# puts c.semitones
