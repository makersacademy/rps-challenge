require_relative '../spec_helper'
require_relative './web_helpers'

feature '#dashboard' do

  before 'signing in' do
    homepage_sign_in
  end

  context 'Player versus Computer' do
    scenario 'Dashboard view' do
      expect(page).to have_content 'Welcome to the RPS Dashboard'
    end

    scenario '#rock' do
      expect(page).to have_button 'Rock'
    end

    scenario 'Scissors' do
      expect(page).to have_button 'Scissors'
    end

    scenario 'Paper' do
      expect(page).to have_button 'Paper'
    end
  end
end
