require 'test_helper'

class TurnTest < ActiveSupport::TestCase
  test "belongs to story" do
    turn = Turn.new
    assert_respond_to turn, :story
  end

  test "responds to generate_story" do
    turn = Turn.new
    assert_respond_to turn, :generate_story
  end

  test "generate_story substitutes values in story" do
    story = Story.new(content:
    'Do you {{verb}} your {{adjective}} {{noun}} {{adverb}}'
)
    turn = Turn.new(noun: 'fish',
                    verb: 'swim',
                    adverb: 'happily',
                    adjective: 'brown',
                    story: story)
    assert_equal 'Do you swim your brown fish happily', turn.generate_story
  end
end
