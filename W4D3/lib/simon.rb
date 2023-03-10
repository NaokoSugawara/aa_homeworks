class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play

    until @game_over
      self.take_turn
    end

    self.game_over_message
    self.reset_game

  end

  def take_turn

    if !@game_over
      self.show_sequence
      self.require_sequence
      self.round_success_message
      self.sequence_length += 1
    end

  end

  def show_sequence
    self.add_random_color
  end

  def require_sequence

  end

  def add_random_color
    colors = ["red", "blue", "yellow", "green"]
    @seq << colors.sample
    # simon.seq.all? { |color| color == simon.seq[0] }
  end

  def round_success_message
    puts "You won!"
  end

  def game_over_message
    puts "Game over ~~"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

end
