class Bottles

  def verse(number)
    %(#{get_bottles(number)} on the wall, #{get_bottles(number)}.
Take #{number == 1 ? "it" : "one"} down and pass it around, #{get_bottles(number - 1)} on the wall.
)
  end

  def get_bottles(number)
    "#{number} #{pluralize_bottle(number)} of beer"
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

end
