require 'spec_helper'

feature "A new human player can register" do
  scenario 'and replace the current one by clicking Register new player' do
    replay
    expect(page).to have_button('Register new player')
  end

  scenario 'and play in their stead' do
    replay
    click_button 'Register new player'
    fill_in :player_01_name, with: 'Yoda'
    click_button 'Submit'
    expect(page).to have_content('Hey, Yoda!')
  end
end
