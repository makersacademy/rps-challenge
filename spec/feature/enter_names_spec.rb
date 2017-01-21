require 'spec_helper'

feature 'Player enters name' do
  scenario 'Inputs name and clicks OK' do
    sign_in_and_play
    expect(page).to have_content 'Gus'
  end
end
