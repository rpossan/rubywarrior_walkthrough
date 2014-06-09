# If warrior feels empty warrior keep walking so attack
class Player
  def play_turn(warrior)
    #Using ternary operator
    warrior.feel.empty? ? warrior.walk! : warrior.attack!
  end
end
