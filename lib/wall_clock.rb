require 'humanize'

class WallClock
  FIVE_PAST = %w(five past)
  TEN_PAST = %w(ten past)
  QUARTER_PAST = %w(ten past)
  TWENTY_PAST = %w(twenty past)
  TWENTY_FIVE_PAST = %w('twenty five' past)
  HALF_PAST = %w(half nil)
  TWENTY_FIVE_TO = %w('twenty five' to)
  TWENTY_TO = %w(twenty to)
  QUARTER_TO = %w(quarter to)
  TEN_TO = %w(ten to)
  FIVE_TO = %w(five to)

  def self.get_sentence hour, minutes
    preamble = %w(it is)
    if(minutes < 30)
      preamble.push hour.humanize
      preamble.push get_minutes(minutes)
    else
      preamble.push get_minutes(minutes)
      preamble.push (hour + 1).humanize
    end
    return preamble.flatten
  end

  def self.get_minutes(minutes)
    case minutes
      when 0..5
        return FIVE_PAST

      when 6..14
        return TEN_PAST

      when 15..19
        return QUARTER_PAST

      when 20..24
        return TWENTY_PAST

      when 25..29
        return TWENTY_FIVE_PAST

      when 30
        return HALF_PAST

      when 31..34
        return TWENTY_FIVE_TO

      when 35..44
        return TWENTY_TO

      when 45..49
        return QUARTER_TO

      when 50..54
        return TEN_TO

      when 55..60
        return FIVE_TO

    end
  end
end
