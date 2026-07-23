class Network < ActiveRecord::Base
  has_many :shows

  def first_show_actors
    show = shows.first

    actor_roles = show.characters.map do |character|
      "#{character.actor.full_name} as #{character.name}"
    end

    "#{show.name}: #{actor_roles.join(', ')}"
  end
end
