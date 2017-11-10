class Turn < ApplicationRecord
  belongs_to :story

  def generate_story
    turn = self
    story = self.story.content

    story = story.gsub('{{verb}}', turn.verb)
    story = story.gsub('{{adjective}}', turn.adjective)
    story = story.gsub('{{noun}}', turn.noun)
    story = story.gsub('{{adverb}}', turn.adverb)

    return story
  end
end
