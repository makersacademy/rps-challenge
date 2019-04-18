feature 'Homepage' do
  scenario 'Show homepage of rock, paper, scissors' do
    visit '/'
    expect(page).to have_content 'Rock, Paper, Scissors'
  end

  scenario 'Add player name' do
    visit '/'
    expect(page).to have_content 'Name'
  end
end

feature 'New game' do
  scenario 'player is asked to choose R, P or S' do
    visit '/'
    click_button 'Play'
    expect(page).to have_content 'Choose Rock, Paper or Scissors'
  end
end
