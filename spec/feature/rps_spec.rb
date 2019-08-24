require_relative 'web_helpers'

feature 'Rps' do
  scenario 'Player(s) can register name before playing the game' do
    register_and_play
    expect(page).to have_content("Bob vs. Computer")
  end

  scenario 'Player(s) can play by clicking one of the Rock, Paper, Scissors buttons' do
    register_and_play
    click_button('Rock')
    expect(page).to have_content('rock')
  end

  scenario "Player(s) can see the Computer's chosen weapon" do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    register_and_play
    click_button('Rock')
    expect(page).to have_content('paper')
  end

  scenario 'Result displayed if drawn' do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    register_and_play
    click_button('Paper')
    # save_and_open_page
    expect(page).to have_content("It's a draw!")
  end

  scenario 'Result displayed if player_1 wins' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    register_and_play
    click_button('Rock')
    # save_and_open_page
    expect(page).to have_content("Bob wins!")
  end

  scenario 'Result displayed if Computer/player_2 wins' do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    register_and_play
    click_button('Rock')
    # save_and_open_page
    expect(page).to have_content("Computer wins!")
  end
end
