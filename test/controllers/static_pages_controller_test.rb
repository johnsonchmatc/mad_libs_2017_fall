require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @story = Story.create(content: 'foobar')
    @turn = Turn.create(noun: 'noun',
                     verb: 'verb',
                     adverb: 'adverb',
                     adjective: 'adjective',
                     story_id: @story.id)
  end

  test "should get home" do
    get root_path
    assert_response :success
  end

  test "should get about" do
    get about_url
    assert_response :success
  end

end
