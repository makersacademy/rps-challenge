require 'rps_game'
require 'rps_player'

feature Game do

  subject(:game) { described_class.new(player, computer) }

  let(:player) { double(:player) }
  let(:computer) { double(:computer) }

  scenario 'The game displays a winner' do
    sign_in
    visit '/result'
    expect(page).to have_content('wins')
  end

  # scenario 'Compares player\'s and computer\'s answers' do
  #   visit '/result'
  #   expect(player.win?).to respond_to(:win?)
  # end
end
