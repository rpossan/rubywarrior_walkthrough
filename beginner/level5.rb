# This level is similir to previous, adding the captives on the road
# We can use the same previous code, but rescuing when it feels a captive
class Player
  def play_turn(warrior)
    if warrior.feel.empty?
      if should_rest?(warrior)
        warrior.rest!
      else
        warrior.walk!
      end
    elsif warrior.feel.captive?
      warrior.rescue!
    else
      warrior.attack!
    end
    @health = warrior.health
  end

  private
  def should_rest?(warrior)
    warrior.health < 15 && (warrior.health >= @health)
  end
end
