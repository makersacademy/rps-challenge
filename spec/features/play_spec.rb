require 'spec_helper'

RSpec.feature "Play rock, paper scissors" do

  scenario "Player can choose to play rock" do
    sign_in_and_play
    select("Rock", :from => "Choose rock, paper, scissors")
    click_button('Submit')
    expect(page).to have_content('The winner is...')
  end

  scenario "Player can choose to play paper" do
    sign_in_and_play
    select("Paper", :from => "Choose rock, paper, scissors")
    click_button('Submit')
    expect(page).to have_content('The winner is...')
  end

  scenario "Player can choose to play scissors" do
    sign_in_and_play
    select("Scissors", :from => "Choose rock, paper, scissors")
    click_button('Submit')
    expect(page).to have_content('The winner is...')
  end
  
end
