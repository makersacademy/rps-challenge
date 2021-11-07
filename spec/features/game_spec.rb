require 'game'
require 'computer'

feature "#winner" do  
  scenario "returns the decision on who has won the game" do
    visit('/')
    fill_in :player_name, with: 'Teffox'
    click_button 'Submit'
    click_button 'Paper'
    expect(page).to have_content 'You won!' if Game.result.to eq true
  end
end