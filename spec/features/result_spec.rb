require 'spec_helper'
require './spec/features/web_helper'

feature 'the player wins' do
  scenario 'player selects rock and the computer selects scissors' do
    srand(3)
    sign_in_and_pick_rock
    expect(page).to have_content 'John wins!'
  end
end

# feature 'the computer wins' do
#   scenario 'player selects scissors and computer selects rock' do
#     srand(2)
#     sign_in_and_pick_scissors
#     expect(page).to have_content 'AIcomp wins!'
#   end
# end
