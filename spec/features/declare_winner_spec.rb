feature 'a winner is declared' do
  let(:game) { Game.new(player, bot) }
  let(:player) { double('Josu') }
  let(:bot) { double('bot') }

  scenario 'player declared winner after beating bot' do
    allow(bot).to receive(:random_option)
    srand(3) ; bot.random_option

    sign_in_and_play
    click_button('Rock')

    expect(page). to have_content('Josu wins!')
  end
end