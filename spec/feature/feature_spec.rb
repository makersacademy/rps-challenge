feature 'testing' do
  scenario 'expects main page to be loaded' do
    visit '/'
    expect(page).to have_content "THE EPIC SHOWDOWN"
  end

  scenario 'expects bored person to fill in name' do
    start_game
    expect(page).to have_content "LET THE GAMES BEGIN bob"
  end

  scenario 'expects bored person to start game on submission' do
    start_game
    expect(page).to have_content 'LET THE GAMES BEGIN'
  end

  scenario 'expects bored person to be able to play' do
    start_game
    click_button 'Rock'
  end

  scenario 'expects bored person to see his selection' do
    start_game
    click_button 'Rock'
    expect(page).to have_content "RESULT:"
  end

  scenario 'expects bored individuals to play together' do
    visit '/'
    click_button 'TWO PLAYER'
    expect(page).to have_content "THE CHALLENGER"
  end

  scenario 'expects bored individuals to play together' do
    visit '/'
    click_button 'TWO PLAYER'
    fill_in :name , with: 'bob'
    fill_in :name2 , with: 'oogy'
    click_button 'submit'
    expect(page).to have_content "bob vs oogy"
  end


end
