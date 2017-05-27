require './lib/game'
require './lib/player'
require './app.rb'

feature 'starting a game' do
  scenario 'when a game is initialised so is a player' do
     player = Player.new('name')
     game = Game.new(player)
     game.player.name
    expect(game.player.name).to eq 'name'
  end
end

feature 'translate a players choice into a number on the array' do
  scenario 'When a player chooses an option that is found in the array @words' do
     player = Player.new('name')
     game = Game.new(player)
     player.choose('rock')
     player
     expect(game.player_choice).to eq 0
  end
end

feature 'Can give name to start playing' do
  scenario 'When a player gives their name and clicks okay then they are brought to the play page ' do
    visit '/'
    fill_in "name", :with => "Charlotte"
    click_button "Play!"
    expect(page).to have_content "Charlotte - time to take your turn"
  end
end

feature 'Can give name to start playing' do
  scenario 'When a player gives their name and clicks okay then they are brought to the play page ' do
    set_up
    expect(page).to have_content "Sally - time to take your turn"
  end
end

feature 'Able to choose an option' do
  scenario 'When a player gives their name and clicks okay then they are brought to the play page  ' do
    set_up
    choice
    expect(page).to have_content "You chose rock"
  end
end

feature 'Able to choose an option' do
  scenario 'When a player gives their name and clicks okay then they are brought to the play page ' do
    set_up
    choice
    expect(page).to have_content "Computer chose "
  end
end


feature 'Able to choose an option' do
  scenario 'When a player gives their name and clicks okay then they are brought to the play page ' do
    set_up
    choice
    expect(page).to have_content "Results"
  end
end
