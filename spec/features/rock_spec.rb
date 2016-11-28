require 'spec_helper.rb'
require 'game.rb'

feature 'P1 chooses Rock' do

  game = Game.new

  scenario 'Computer chooses Rock' do
    allow(game).to receive(:random_number).and_return(1)
    p1_chose_rock
    expect(page).to have_content("It's a draw")
  end

  scenario 'Computer chooses Paper' do
    p1_chose_rock
    allow(game).to receive(:computer_attack_type).and_return('Paper')
    expect(page).to have_content("Computer won!")
  end
end
