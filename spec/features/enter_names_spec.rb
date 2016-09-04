require 'spec_helper'

describe RockPaperScissors do

feature 'enter names' do
  scenario 'two players enter names and start a game' do
    sign_in_and_play
    expect(page).to have_text("Matthew 0 vs Rafaela 0")
  end
end

end
