require 'pry'

class Bottles

  def verse(number)
%(#{line_one(number).capitalize}
#{line_two(number)}
)
  end

  def verses(start, finish)
    result = ""
    numbers = (finish..start).to_a.reverse
    last = numbers[-1]

    numbers.each do |num|
      result << verse(num)
      result << "\n" if num != last
    end
    result
  end

  def song
    verses(99, 0)
  end

  private

  def line_one(number)
    get_bottles(number) +
      " on the wall, #{get_bottles(number)}."
  end

  def line_two(number)
    case number
    when 0
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    else
      "Take #{it_or_one(number)} down and pass it around, #{get_bottles(number - 1)} on the wall."
    end
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
