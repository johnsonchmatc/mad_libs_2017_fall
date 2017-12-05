class Turn < ApplicationRecord
  belongs_to :story

  def generate_story
    story = self.story.content
    substitutions = { verb: verb,
                      adjective: adjective,
                      noun: noun,
                      adverb: adverb }

    substitutions.each do |key, value|
      story.gsub!("{{#{key}}}", value)
    end

    return story
  end

end
