require 'test_helper'

class TurnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @story = Story.create(content: 'foobar')
    @turn = Turn.create(noun: 'noun',
                     verb: 'verb',
                     adverb: 'adverb',
                     adjective: 'adjective',
                     story_id: @story.id)
  end

  test "should get index" do
    get turns_url
    assert_response :success
  end

  test "should get new" do
    get new_turn_url
    assert_response :success
  end

  test "should create turn" do
    assert_difference('Turn.count') do
      post turns_url, params: { turn: { adjective: @turn.adjective,
                                        adverb: @turn.adverb,
                                        noun: @turn.noun,
                                        verb: @turn.verb,
                                        story_id: @story.id} }
    end

    assert_redirected_to turn_url(Turn.last)
  end

  test "should show turn" do
    get turn_url(@turn)
    assert_response :success
  end

  test "should get edit" do
    get edit_turn_url(@turn)
    assert_response :success
  end

  test "should update turn" do
    patch turn_url(@turn), params: { turn: { adjective: @turn.adjective,
                                             adverb: @turn.adverb,
                                             noun: @turn.noun,
                                             verb: @turn.verb } }
    assert_redirected_to turn_url(@turn)
  end

  test "should update turn story" do
    story = Story.create(content: "Another story")
    patch turn_url(@turn), params: { turn: { adjective: @turn.adjective,
                                             adverb: @turn.adverb,
                                             noun: @turn.noun,
                                             verb: @turn.verb,
                                             story_id: story.id } }
    @turn.reload # Make it fetch the updated record from the database
    assert_equal @turn.story_id, story.id
  end

  test "should destroy turn" do
    assert_difference('Turn.count', -1) do
      delete turn_url(@turn)
    end

    assert_redirected_to turns_url
  end
end
