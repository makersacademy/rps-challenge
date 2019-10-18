def log_in
    visit('/')
    fill_in :player_name, with: 'Josh'
    click_button 'Submit'
  end

  