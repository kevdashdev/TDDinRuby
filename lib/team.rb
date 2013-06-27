class Team
  attr_accessor :name, :players
  def initialize(name = '', players = [])
    raise Exception unless players.is_a? Array
    raise Exception if name =~ /crappy/i
    @name = name
    @players = players
  end

  def favored?
    @players.include? 'Carling Candelaria'
  end
end
