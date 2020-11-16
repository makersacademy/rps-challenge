require 'game'
require 'spec_helper'

describe Game do

  feature 'Enter player names' do
  scenario 'Players can enter their names and see them on screen' do
    sign_in_and_play
    expect(page).to have_content '[ 0 ] Adam versus Computer [ 0 ]'
  end
end


end
