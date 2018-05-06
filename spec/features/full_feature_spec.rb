require_relative 'web_helpers'

feature 'The whole game one player' do
  let(:player_name_1) { 'Sheldon' }

  scenario 'Index loads' do
    visit '/'
    expect(page).to have_content('Welcome to Rock, Paper, Scissors')
  end
  scenario 'Gets to main game page' do
    vist_index_add_name(player_name_1)
    expect(page).to have_content("Ready to play #{player_name_1}?")
  end
  scenario 'Can play the game' do
    vist_index_add_name(player_name_1)
    choose('paper_1')
    click_button('Shoot!')

    expect(page).to have_content("Ready to play #{player_name_1}?")
  end
end

feature 'The whole game two player' do
  let(:player_name_1) { 'Sheldon' }
  let(:player_name_2) { 'Penny' }

  scenario 'Index loads' do
    visit '/'
    expect(page).to have_content('Welcome to Rock, Paper, Scissors')
  end
  scenario 'Gets to main game page' do
    visit '/'
    fill_in('player_name_1', with: player_name_1)
    fill_in('player_name_2', with: player_name_2)
    click_button 'Play game'

    expect(page).to have_content("Ready to play #{player_name_1} and #{player_name_2}?")
  end
  scenario 'Can play the game' do
    visit '/'
    fill_in('player_name_1', with: player_name_1)
    fill_in('player_name_2', with: player_name_2)
    click_button 'Play game'

    choose('paper_1')
    choose('rock_2')
    click_button('Shoot!')

    expect(page).to have_content("Ready to play #{player_name_1} and #{player_name_2}?")
  end
end
