require 'spec_helper'

feature 'names' do
  scenario 'enter names' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Ewan!'
  end
end
