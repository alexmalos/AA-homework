class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    cups = Array.new(14) { Array.new(4, :stone) }
    cups[6], cups[13] = [], []
    cups
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' unless (0..5).include?(start_pos)
    raise 'Starting cup is empty' if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = []

    until stones.empty?
      start_pos += 1
      unless current_player_name == @name1 && start_pos == 13 ||
        current_player_name == @name2 && start_pos == 6
        @cups[start_pos % 14] << stones.pop
      end
    end

    render
    next_turn(start_pos % 14)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].length == 1
      :switch
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    [@cups[0..5], @cups[7..12]].any? do |side|
      side.all? { |cup| cup.empty? }
    end
  end

  def winner
    case cups[6] <=> cups[13]
    when 0
      :draw
    when 1
      @name1
    when -1
      @name2
    end
  end
end
