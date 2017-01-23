require 'spec_helper'

feature "Players can register names" do
  scenario 'and Player 01 can see theirs first' do
    register
    expect(page).to have_content('Hey, Stefan!')
  end

  scenario 'and Player 02 can see theirs after' do
    register_and_choose_weapon
    expect(page).to have_content('Hey, Yoda!')
  end
end
