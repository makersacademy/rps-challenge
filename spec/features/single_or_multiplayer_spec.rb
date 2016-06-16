require 'spec_helper'

feature 'can choose single player or multiplayer' do
  scenario 'has option of single player' do
    visit('/')
    expect(page).to have_button('Single Player')
    end
end
