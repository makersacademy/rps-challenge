feature 'computer chooses one option at random' do
  let(:bot) { double('bot') }

  scenario 'random option is displayed on screen' do
    allow(bot).to receive(:random_option)
    srand(3); bot.random_option

    play_computer
    sign_in_and_play
    click_button('Rock')

    expect(page).to have_content('Computer chose Scissors')
  end
end
