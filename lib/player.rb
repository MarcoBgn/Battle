class Player

  DEFAULT_HP = 40
  attr_reader :name, :hp

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def get_attacked
    @hp -= 10
  end


end
