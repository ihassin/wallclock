require 'spec_helper'

describe 'Time leading to a certain hour' do
  describe 'leading' do

    it 'shows five to' do
      expect(WallClock.get_minutes(56)).to eq WallClock::FIVE_TO
    end

    it 'shows ten to' do
      expect(WallClock.get_minutes(51)).to eq WallClock::TEN_TO
    end

    it 'shows quarter to' do
      expect(WallClock.get_minutes(46)).to eq WallClock::QUARTER_TO
    end

    it 'shows twenty to' do
      expect(WallClock.get_minutes(41)).to eq WallClock::TWENTY_TO
    end

    it 'shows twenty five to' do
      expect(WallClock.get_minutes(31)).to eq WallClock::TWENTY_FIVE_TO
    end

  end

  describe 'Time past a certain hour' do
    it 'shows five past' do
      expect(WallClock.get_minutes(1)).to eq WallClock::FIVE_PAST
    end

    it 'shows ten past' do
      expect(WallClock.get_minutes(11)).to eq WallClock::TEN_PAST
    end

    it 'shows quarter past' do
      expect(WallClock.get_minutes(16)).to eq WallClock::QUARTER_PAST
    end

    it 'shows twenty past' do
      expect(WallClock.get_minutes(21)).to eq WallClock::TWENTY_PAST
    end

    it 'shows twenty five past' do
      expect(WallClock.get_minutes(26)).to eq WallClock::TWENTY_FIVE_PAST
    end

    it 'shows half past' do
      expect(WallClock.get_minutes(30)).to eq WallClock::HALF_PAST
    end

  end

  describe 'full sentences' do
    it 'is quarter to three' do
      expect(WallClock.get_sentence(2, 46)).to eq %w(it is quarter to three)
    end

  end
end
