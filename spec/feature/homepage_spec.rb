feature 'Homepage' do
  scenario 'Displays name of the game' do
    visit('/')
    expect(page).to have_content('Rock Paper Scissors Spock Lizard')
  end
  scenario 'Gives user option to select single player' do
    visit('/')
    expect(page).to have_field('Single Player')
  end
  scenario 'Gives user option to select multiplayer' do
    visit('/')
    expect(page).to have_field('Multiplayer')
  end
  scenario 'Name form for player 1' do
    visit('/')
    expect(page).to have_field('name_1')
  end
  scenario 'Option to enter name for player 2 if mutliplayer selected' do
    visit('/')
    choose('Multiplayer')
    expect(page).to have_field('name_2')
  end
  scenario 'Lets user start game' do
    visit('/')
    expect(page).to have_selector(:link_or_button, 'Play Game!')
  end
end
