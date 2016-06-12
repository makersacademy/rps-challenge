feature 'Registration' do
  
  scenario 'requests one name from user if one-player mode selected' do
    visit('/')
    choose('one_player')
    click_button('OK')
    expect(page).to have_content('Please enter your name')
  end

  scenario 'requests two names if two-player mode selected' do
    visit('/')
    choose('two_player')
    click_button('OK')
    expect(page).to have_content('Please enter your names')
  end

  scenario 'announces players taking part when 1p mode selected' do
    visit('/')
    choose('one_player')
    click_button('OK')
    fill_in :player1_name, with: 'Paul'
    click_button 'Submit'
    expect(page).to have_content('Paul vs. Computer')
  end

  scenario 'announces players taking part when 2p mode selected' do
    visit('/')
    choose('two_player')
    click_button('OK')
    fill_in :player1_name, with: 'Paul'
    fill_in :player2_name, with: 'John'
    click_button 'Submit'
    expect(page).to have_content('Paul vs. John')
  end

end