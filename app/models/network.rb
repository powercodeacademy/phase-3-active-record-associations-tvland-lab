class Network < ActiveRecord::Base
  has_many :shows

  def first_show_actors
    first_show = self.shows.first
    actor_character_list = first_show.characters.map { |character| "#{character.actor.full_name} as #{character.name}"}
    "#{first_show.name}: #{actor_character_list.join(", ")}"
  end
end
