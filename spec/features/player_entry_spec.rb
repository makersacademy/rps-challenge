require 'spec_helper'

feature 'allows player to enter name' do
  scenario 'player enters name' do
    sign_in_and_play
    expect(page).to have_content 'Mephistopheles'
  end
end
