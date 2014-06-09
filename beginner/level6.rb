class Player
  
  DANGER_HEALTH = 9
  
  def play_turn(warrior)
    @direction ||= :backward
    
    if should_run_away?(warrior)
      @direction = :backward
    elsif warrior.health < 20
      @direction = :forward
    end
    
    if warrior.feel(@direction).empty?
      if should_rest?(warrior)
        warrior.rest!
      else
        warrior.walk!(@direction)
      end
    elsif warrior.feel(@direction).captive?
      warrior.rescue!(@direction)
      @direction = :forward
    else
      warrior.attack!
    end
    @health = warrior.health
  end
  
  private
  
  def should_run_away?(warrior)
    ( ! is_safe?(warrior) && warrior.health <= DANGER_HEALTH)
  end
  
  def should_rest?(warrior)
    warrior.health < 16 && (warrior.health >= @health)
  end
  
  def is_safe?(warrior)
    (warrior.health >= 16)
  end
  
end
