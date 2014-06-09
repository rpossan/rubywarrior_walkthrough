# Now warrior should continue with the same algorithm but have to pay attention in the archer
# When warrior take damage have to continue walking to don't take the arrows damage
class Player
  def play_turn(warrior)
    if warrior.feel.empty?
      #Using the method to check
      if should_rest?(warrior)
        warrior.rest!
      else
        warrior.walk!
      end
    else
      warrior.attack!
    end
    @health = warrior.health
  end

  private
  # A helper method to check if warrior need or not to rest
  def should_rest?(warrior)
    # If warrior is not taking damage and less than 15 need to rest
    warrior.health < 15 && (warrior.health >= @health)
  end
end
