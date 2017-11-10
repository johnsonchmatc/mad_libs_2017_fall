class Story < ApplicationRecord
  has_many :turns
  def create_story(turn)
    "Do you #{turn.verb} your #{turn.adjective} #{turn.noun} #{turn.adverb}? That's hilarious!"
  end
end
