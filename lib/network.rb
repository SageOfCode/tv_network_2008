class Network
  attr_reader :name

  def initialize(name, shows = [])
    @name = name
    @shows = shows
  end

  def add_show(show)
    @shows << show
  end

  def shows
    @shows
  end

  def main_characters
    @shows.each do |show|
      show.characters
    end
  end

  def actors_by_show
    show_actors = {}
    @shows.each do |show|
      show.characters.each do |character|
        if show_actors[character.actor]
          show_actors << character.values
        else
          show_actors[character.actor] = [character]
        end
      end
    end
    show_actors
  end
end
