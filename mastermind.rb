class MasterMind
  COLOR_ARRAY = %w[red blue green yellow orange purple pink black white grey brown turquoise silver gold copper bronze
                   lavender peach magenta cyan teal coral navy mint lime olive maroon burgundy violet indigo sapphire emerald ruby garnet amber honey iory cream beige taupe mocha charcoal onyx periwinkle fuchsia cerulean azure rose blush tangerine lemon seafoam chocolate plum]
  RANDOM_COLOR = COLOR_ARRAY.sample
  attr_reader :random_color, :number_of_guesses

  def initialize
    @random_color = RANDOM_COLOR
    @number_of_guesses = 12
  end

  def guess
    color = gets.chomp.downcase
    @number_of_guesses -= 1
    color
  end

  def new_game
    while number_of_guesses.positive?
      result = guess
      if result == random_color
        puts 'You win'
      else
        puts "You guessed wrong remaining #{number_of_guesses} guesses"
      end
      break if result == random_color
    end

    puts "You're out of guesses, You Lose! the correct answer was #{random_color}" if number_of_guesses.zero?
  end
end

p MasterMind.new.new_game
