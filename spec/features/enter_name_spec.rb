require 'spec_helper'

feature 'enter name' do
  scenario 'submitting name' do
    sign_in_and_play
    expect(page).to have_content 'Daniela'
  end
end
