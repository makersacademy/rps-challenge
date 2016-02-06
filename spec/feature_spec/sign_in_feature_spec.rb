require 'spec_helper'

feature 'Player Set up' do


  scenario 'Signing up' do
    sign_up
    expect(page).to have_content('Soulless Marketeer')
  end


end
