require_relative 'web_helpers'

feature 'The whole game' do
  let(:player_name) { 'Sheldon' }

  scenario 'Index loads' do
    visit '/'
    expect(page).to have_content('Welcome to Rock, Paper, Scissors')
  end
  scenario 'Gets to main game page' do
    vist_index_add_name(player_name)
    expect(page).to have_content("Ready to play #{player_name}?")
  end
  scenario 'Can play the game' do
    vist_index_add_name(player_name)
    choose('paper_1')
    click_button('Shoot!')
    expect(page).to have_content("Ready to play #{player_name}?")
  end
end
