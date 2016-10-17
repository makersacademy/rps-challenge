require 'spec_helper'

feature "choose game mode" do

  before do
    visit '/'
  end
  scenario 'Player vs computer' do
    click_button ("Player vs Computer")
    expect(page).to have_content ('Opponent: Bob the Computer')
  end

  scenario 'Player vs computer' do
    click_button ("Player vs Player")
    expect(page).to have_text ('Enter name for Player 1')
  end
end
