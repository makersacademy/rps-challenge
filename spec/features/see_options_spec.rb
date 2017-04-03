require 'spec_helper'

feature 'playing a game' do
  scenario 'see the lizard options' do
    sign_in_and_play
    expect(page).to have_content 'Ultradominant Orange-throat'
    expect(page).to have_content 'Dominant Blue-throat'
    expect(page).to have_content 'Yellow-throated sneaker'
  end
end
