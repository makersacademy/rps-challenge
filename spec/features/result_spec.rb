require './models/game.rb'
require './models/computer.rb'
require './models/player.rb'

feature 'results view' do

  scenario 'after clicking on an option the user is redirected to a results page' do
    allow_any_instance_of(Computer).to receive(:move).and_return("Scissors")
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_text("James wins!")
  end
end