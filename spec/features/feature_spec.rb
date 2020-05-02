feature 'test homepage' do 
  scenario 'page includes correct content' do 
    visit('/')
    expect(page).to have_content 'WELCOME TO ROCK PAPER SCISSORS'
    expect(page).to have_content "By Patrick Sawyer"
    expect(page).to have_content "Please enter your name:"
    expect(page).to have_content "Add a second name to play multiplayer:"
    
  end
end

feature 'name form' do 
  scenario 'it saves one name' do
    sign_in
    expect(page).to have_content 'Choose your weapon, Patrick'
    expect(page).to have_select('rps', options: ['ROCK', 'PAPER', 'SCISSORS']).once
    expect(page).to have_selector("input[type=submit][value='GO!']")
  end
  scenario 'it saves two names' do
    sign_in_2_players
    expect(page).to have_content 'Choose your weapon, Patrick'
    expect(page).to have_content 'Choose your weapon, John'
    expect(page).to have_select('rps', options: ['ROCK', 'PAPER', 'SCISSORS']).once
    expect(page).to have_select('rps2', options: ['ROCK', 'PAPER', 'SCISSORS']).once
    expect(page).to have_selector("input[type=submit][value='GO!']")
  end
end

feature 'play single player game' do
  scenario 'player choses rock' do 
    sign_in
    select 'ROCK', :from => "rps"
    click_button 'submit'
    expect(page).to have_content 'Congratulations,'
    expect(page).to have_content 'You are the winner.'
    100.times {
      expect(page).to(satisfy { |page| page.has_content?('Patrick') or page.has_content?('COMPUTER') or page.has_content?("NOBODY (It was a draw)") })
    }
  end
end

feature 'play multi player game' do
  scenario 'rock beats scissors' do 
    sign_in_2_players
    select 'ROCK', :from => "rps"
    select 'SCISSORS', :from => "rps2"
    click_button 'submit'
    expect(page).to have_content 'Congratulations, Patrick'
    expect(page).to have_content 'You are the winner.'
  end
  scenario 'paper beats rock' do 
    sign_in_2_players
    select 'ROCK', :from => "rps"
    select 'PAPER', :from => "rps2"
    click_button 'submit'
    expect(page).to have_content 'Congratulations, John'
    expect(page).to have_content 'You are the winner.'
  end
  scenario 'paper beats scissors' do 
    sign_in_2_players
    select 'PAPER', :from => "rps"
    select 'SCISSORS', :from => "rps2"
    click_button 'submit'
    expect(page).to have_content 'Congratulations, John'
    expect(page).to have_content 'You are the winner.'
  end
  scenario 'draw' do 
    sign_in_2_players
    select 'PAPER', :from => "rps"
    select 'PAPER', :from => "rps2"
    click_button 'submit'
    expect(page).to have_content 'Congratulations, NOBODY (It was a draw)'
    expect(page).to have_content 'You are the winner.'
  end
end
