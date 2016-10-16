require 'spec_helper'

feature 'View Rock Paper Scissors' do
  scenario 'the candidates will be presented the choices (rock, paper or scissors)' do
    sign_in_and_play
    expect(page).to have_content 'Rock, Paper or Scissors'
  end

end
