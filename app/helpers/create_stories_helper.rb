module CreateStoriesHelper
  def create_story_for_view(turn)
    story = Story.new
    story.create_story(turn)
  end
end
