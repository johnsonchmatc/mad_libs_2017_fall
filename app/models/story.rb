class Story
  
  def self.hello
    puts "Hello World"
  end
  
  def create_story(turn)
    "Do you #{turn.verb} your #{turn.adjective} #{turn.noun} #{turn.adverb}? That's hilarious!"
  end
end
