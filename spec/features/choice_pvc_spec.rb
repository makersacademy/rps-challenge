require 'spec_helper'

describe 'index page' do

  scenario 'player is able to choose weapon' do
    sign_in_pvc
    click_button 'Rock'
    expect(page).to have_content 'Rufus choses rock.'
    expect(page).to have_button 'Generate computer choice'
  end
end
