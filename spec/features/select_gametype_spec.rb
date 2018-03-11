feature 'Select gametype' do

  scenario 'User can select a single player/regular game' do
    visit('/')
    choose('single-player')
    choose('normal')
    click_on('Start game')

    expect(page).to have_content('normal')
  end

  scenario 'User can select a multiplayer/regular game' do
    visit('/')
    choose('two-player')
    choose('normal')
    click_on('Start game')

    expect(page).to have_content('normal')
  end

  # scenario 'User can select a single player and advanced game' do
  #   visit('/')
  #   choose('single-player')
  #   choose('advanced')
  #   click_on('Start game')
  #
  #   expect(page).to have_content('advanced')
  # end
  #
  # scenario 'User can select a multiplayer and advanced game' do
  #   visit('/')
  #   choose('two-player')
  #   choose('advanced')
  #   click_on('Start game')
  #
  #   expect(page).to have_content('advanced')
  # end
end
