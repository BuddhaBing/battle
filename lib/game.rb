class Game

  DEFAULT_DAMAGE = 10

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = {player: player_1, name: player_1.name, health: player_1.health}
    @player_2 = {player: player_2, name: player_2.name, health: player_2.health}
    @turn_counter = 0
  end

  def attack(player, damage = DEFAULT_DAMAGE)
    player.takes_damage(damage)
    player_status(player)
  end

  def player_status(player)
    @player_1.has_value?(player) ? @player_1[:health] = player.health : @player_2[:health] = player.health
  end

	def current_turn
		game_over? ? "Game over!" :	"#{switch_turn[:name]}'s turn"
	end

	def switch_turn
    @turn_counter += 1
    @turn_counter % 2 == 0 ? @player_1 : @player_2
  end

	private

  def game_over?
    @player_1[:health] == 0 || @player_2[:health] == 0
  end

end
# require_relative 'player'
# p1 = Player.new("Mario")
# p2 = Player.new("Bowser")
# game = Game.new(p1, p2)
# puts game.player_2[:player]
# game.attack(game.player_2[:player])
# puts game.player_2[:health]
# puts p2.health
