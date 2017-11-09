class Story < ApplicationRecord
  def create_story(turn)
    "Do you #{turn.verb} your #{turn.adjective} #{turn.noun} #{turn.adverb}? That's hilarious!"
  end
end
