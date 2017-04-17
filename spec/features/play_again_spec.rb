require 'spec_helper'

feature 'play again with same user' do
  scenario 'click to play again' do
    make_choice('paper')
    click_button('Play Again')
    expect(page).to have_content('Radu')
  end
end
