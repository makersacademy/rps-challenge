require 'spec_helper'

feature 'Beginning a game' do
  scenario 'the computer offers rock, paper and scissors buttons' do
    sign_in_and_play
    expect(page).to have_content("What do you choose? Rock, Paper or Scissors?")
  end

end
