#Warrior should rest when he has opportunity
class Player
  def play_turn(warrior)
    if warrior.feel.empty?
      warrior.health < 15 ? warrior.rest! : warrior.walk!
    elsif 
      warrior.attack!
    end
  end
end


# Using ternary. Less lines of code but worst reading
#class Player
#  def play_turn(warrior)
#    warrior.feel.empty? ? warrior.health < 15 ? warrior.rest! : warrior.walk! : warrior.attack!
#  end
#end
