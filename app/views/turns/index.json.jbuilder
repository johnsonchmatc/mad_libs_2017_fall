json.array!(@turns) do |turn|
  json.story turn.generate_story
  json.author 'Someone Famous'
end
