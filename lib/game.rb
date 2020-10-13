class Game
  attr_accessor :human_player
  @@enemies = []

  def initialize(name)
    @human_player = HumanPlayer.new(name)


    4.times do |x|
      x = 1
      @@enemies << Player.new("player#{x}")
      x += 1
    end

  end

  def kill_player(player)

    @@enemies do |player|
    if player.life_points <= 0
    @@enemies.delete(player)
    end

  end

  def is_still_ongoing?

    if @human_player.life_points >0 && @@enemies.length > 0  #On reste dans la boucle tant que user est vivant et que au moins un des ennemies l'est Autre façon de faire # @@enemies.any? do |player| player.life_points > 0 end
      return "True"
    else
      return "False"
    end


  end

  def show_players

    print "#{human_player.name} a encore #{@human_player.life_points} points de vie et il reste #{@@enemies.length} méchants"

  end

  def menu(choix)

    choix = gets.chomp

    case choix
    when "a"
      user.search_weapon
      puts "--------------"
      gets.chomp
    when "s"
      user.search_health_pack
      puts "--------------"
      gets.chomp

    when "0"
      user.attacks(player1)
      puts "--------------"
      gets.chomp

    when "1"
      user.attacks(player2)
      puts "--------------"
      gets.chomp

    end

  end

end

initialize