require 'spec_helper'

feature "Player 01 can register name" do
  scenario 'to see it (in lights) before playing' do
    register
    expect(page).to have_content('Hey, Stefan!')
  end
end
