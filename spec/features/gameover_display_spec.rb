require './models/game.rb'
require './models/cpu.rb'
require './models/player.rb'

feature 'Game Over Display' do

  scenario 'When it is game over, the user sees the move they played' do
    visit '/'
    enter_name
    click_button 'Rock'
    expect(page).to have_text("Kirby played Rock")
  end

end
