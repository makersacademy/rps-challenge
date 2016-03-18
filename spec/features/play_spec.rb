feature 'Play page' do

  scenario '0.0. Page displays name of player' do
    sign_in_and_play
    expect(page).to have_content('Player 1: Misa')
  end
end
