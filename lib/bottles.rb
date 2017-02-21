class Bottles

  def verse(number)
    %(#{get_bottles(number)} on the wall, #{get_bottles(number)}.
Take #{it_or_one(number)} down and pass it around, #{get_bottles(number - 1)} on the wall.
)
  end

  def get_bottles(number)
    case number
    when 0
      "#{pluralize_bottle(number)} of beer"
    else
      "#{number} #{pluralize_bottle(number)} of beer"
    end
  end

  def pluralize_bottle(number)
    case number
    when 0
      "no more bottles"
    when 1
      "bottle"
    else
      "bottles"
    end
  end

  def it_or_one(number)
    number == 1 ? "it" : "one"
  end

end
