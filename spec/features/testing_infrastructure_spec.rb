feature 'testing infrastruecture' do

  scenario 'can open websight and read content' do
    visit('/')
    expect(page).to(have_content('Welcome to Rock, Paper, Scissors'))
    expect(page).to(have_content('Add player name'))
    expect(page).to(have_content('Player'))
  end

  scenario 'can click on the Play button and got to the game page' do
    viair('/')
    fill_in('player', with: 'Chris')
    click_on('Play')
    expect(page).to(have_content('Rock'))
    expect(page).to(have_content('Paper'))
    expect(page).to(have_content('Scissors'))
  end
end