require 'spec_helper'

RSpec.feature "Play rock, paper scissors" do

  scenario "Player can choose to play rock" do
    visit('/')
    fill_in :player_1_name, with:'Liz'
    click_button('Submit')
    select("Rock", :from => "Choose rock, paper, scissors")
    click_button('Submit')
    expect(page).to have_content('The winner is...')
  end

  scenario "Player can choose to play paper" do
    visit('/')
    fill_in :player_1_name, with:'Liz'
    click_button('Submit')
    select("Paper", :from => "Choose rock, paper, scissors")
    click_button('Submit')
    expect(page).to have_content('The winner is...')
  end

  scenario "Player can choose to play scissors" do
    visit('/')
    fill_in :player_1_name, with:'Liz'
    click_button('Submit')
    select("Scissors", :from => "Choose rock, paper, scissors")
    click_button('Submit')
    expect(page).to have_content('The winner is...')
  end
  
end
