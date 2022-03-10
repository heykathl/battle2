class Game

  attr_accessor :player1, :player2, :current_attacker, :current_defender

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_attacker = @player1
    @current_defender = @player2
    
  end
  
  def attack(damage:)
    @current_defender.receive_damage(10)
    switch_current_player
  end

  def attack_message 
    "#{@current_attacker.name} attacked #{@current_defender.name}!"
  end
  
  def turn_message
    "#{@current_attacker.name}, it's your turn to attack!"
  end
  
  private

  def switch_current_player 
    @current_attacker, @current_defender = @current_defender, @current_attacker
  end 



end