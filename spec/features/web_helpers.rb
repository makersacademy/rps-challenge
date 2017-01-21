def register
  visit('/')
  fill_in :name, with: 'Katerina'
  click_button 'Start game'
end

def register_and_play(choice)
  register
  choose(choice)
  click_button 'Play!'
end
