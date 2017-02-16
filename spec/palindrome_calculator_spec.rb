require 'spec_helper'

RSpec.describe PalindromeCalculator do

  describe 'when it recognizes Swedish pop stars' do
    before { @pal_cal = PalindromeCalculator.new('abba') }
    specify { expect(@pal_cal.show_results).to eq([0, 4]) }
  end


  describe 'when it calculates the correct index and size' do
    before { @pal_cal = PalindromeCalculator.new('cabbabbaa') }
    specify { expect(@pal_cal.show_results).to eq([1,7]) }
  end

  describe 'an Irish band that is not a palindrome' do
    before { @pal_cal = PalindromeCalculator.new('U2') }
    specify { expect(@pal_cal.show_results).to be_falsey }
  end

end
