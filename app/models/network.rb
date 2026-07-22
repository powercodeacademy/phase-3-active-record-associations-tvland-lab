class Network < ActiveRecord::Base
  has_many :shows

  def first_show_actors
    first_show = shows.first

    first_show.characters.map do |character|
      "#{first_show.name}: #{character.actor.full_name} as #{character.name}"
    end.join(", ")
  end
end
