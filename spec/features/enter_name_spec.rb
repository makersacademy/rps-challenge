require 'spec_helper'

feature 'input name' do
  scenario 'player can input their name' do
    sign_in_and_play
    expect(page).to have_content('Roberto, choose your lizard')
  end
end
