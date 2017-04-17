require('rspec')
require('clock_angle')

describe('String#clock_angle') do

  it('returns a degree value') do
    expect(('01:45').clock_angle()).to be_a(Float)
  end
  #
  # it('returns a difference between minutes angle and hours angle') do
    # expect(('01:45').clock_angle()).to be_a(Float)
  # end
  #
  # it('returns the smallest difference between minutes angle and hours angle') do
    # expect(('01:45').clock_angle()).to(eq(120))
  # end
  #
  it('counts 12:00 as 0 degrees for the hour hand') do
    expect(('12:45').clock_angle()).to(eq(90))
  end

end
