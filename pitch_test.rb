require 'minitest/autorun'
require './pitch'

class TestPitch < MiniTest::Test

  def setup
    @A4  = Pitch.new :A,  4
    @Ds2 = Pitch.new :Ds, 2
    @Gf5 = Pitch.new :Gf, 5
  end

  def test_semitones
    assert_equal @A4.semitones,   0
    assert_equal @Ds2.semitones, -30
    assert_equal @Gf5.semitones,  9
  end

  def test_frequency
    assert_equal @A4.frequency,  440.0
    assert_equal @Ds2.frequency, 77.782
    assert_equal @Gf5.frequency, 739.989
  end
end
