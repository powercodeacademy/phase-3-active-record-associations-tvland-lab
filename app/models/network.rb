class Network < ActiveRecord::Base
  has_many :shows

  def first_show_actors
    show = shows.first
    roles = show.characters.map do |character|
      "#{character.actor.full_name} as #{character.name}"
    end
    "#{show.name}: #{roles.join(', ')}"
  end

  def sorry
    "We're sorry about passing on John Mulaney's pilot"
  end
end
