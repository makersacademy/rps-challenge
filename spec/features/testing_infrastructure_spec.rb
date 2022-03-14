feature 'testing infrastruecture' do

  scenario 'can open websight and read content' do
    visit('/')
    expect(page).to(have_content('Welcome to Rock, Paper, Scissors'))
    expect(page).to(have_content('Add player name'))
    expect(page).to(have_content('Player'))
  end

  scenario 'can click on the Play button and go to the /game page' do
    visit('/')
    fill_in('player', with: 'Chris')
    click_on('Play')
    expect(page).to(have_content('Chris VS CPU!'))
    expect(page).to(have_content('Choose your move and then press Play!'))
  end

  # scenario 'can choose a move and play against the cpu' do
  #   visit('/')
  #   fill_in('player', with: 'Chris')
  #   click_on('Play')
  #   click_on('Rock')
  #   click_on('Play')
  #   allow(@cpu_move).to(receive(:return).and_return('Scirssors'))
  #   expect(page).to(have_content('Chris chose Rock!'))
  #   expect(page).to(have_content('CPU chose Scissors!'))
  #   expect(page).to(have_content('Chris wins the match!'))
  # end


end