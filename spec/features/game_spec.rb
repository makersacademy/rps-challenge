require 'spec_helper'

feature 'game' do

  scenario 'game result' do
    visit('/game')
    expect(page).to have_content("The Computer chose")
  end
end
