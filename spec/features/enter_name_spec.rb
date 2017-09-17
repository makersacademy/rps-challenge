require 'spec_helper'

feature 'Player to register name' do
  scenario 'Fill in form with name' do
    register_and_play
    expect(page).to(have_content('Allanon has entered the fight!'))
  end
end
