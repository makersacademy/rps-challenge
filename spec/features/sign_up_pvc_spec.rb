require 'spec_helper'

describe 'index page' do

  scenario 'home screen displays welcome message' do
    sign_in_pvc
    expect(page).to have_content 'Hiya Rufus. Choose your weapon!'
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
    expect(page).to have_button 'Lizard'
    expect(page).to have_button 'Spock'
  end
end
