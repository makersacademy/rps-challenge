feature 'Play page' do

  before(:each) do
    sign_in_and_play
  end

  scenario '0.0. Page displays name of player 1' do
    expect(page).to have_content('Player 1: Misa')
  end

  scenario '0.0. Page displays name of player 1' do
    expect(page).to have_content('Player 2: Computer')
  end
end
