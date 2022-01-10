feature 'Decide a winner' do
  scenario 'scissors cuts paper' do 
    human_bob_babs_play
    click_button "SCISSORS"
    click_button "PAPER"
    expect(page).to have_content "The results are in: Player 1 Wins!"
  end

  scenario 'paper covers rock' do 
    human_bob_babs_play
    click_button "ROCK"
    click_button "PAPER"
    expect(page).to have_content "The results are in: Player 2 Wins!"
  end

  scenario 'rock crushes lizard' do 
    human_bob_babs_play
    click_button "ROCK"
    click_button "LIZARD"
    expect(page).to have_content "The results are in: Player 1 Wins!"
  end

  scenario 'lizard poisons spock' do 
    human_bob_babs_play
    click_button "SPOCK"
    click_button "LIZARD"
    expect(page).to have_content "The results are in: Player 2 Wins!"
  end

  scenario 'spock smashes scissors' do 
    human_bob_babs_play
    click_button "SPOCK"
    click_button "SCISSORS"
    expect(page).to have_content "The results are in: Player 1 Wins!"
  end

  scenario 'scissors decapitates lizard' do 
    human_bob_babs_play
    click_button "LIZARD"
    click_button "SCISSORS"
    expect(page).to have_content "The results are in: Player 2 Wins!"
  end

  scenario 'lizard eats paper' do 
    human_bob_babs_play
    click_button "LIZARD"
    click_button "PAPER"
    expect(page).to have_content "The results are in: Player 1 Wins!"
  end

  scenario 'paper disproves spock' do 
    human_bob_babs_play
    click_button "SPOCK"
    click_button "PAPER"
    expect(page).to have_content "The results are in: Player 2 Wins!"
  end

  scenario 'spock vaporizes rock' do 
    human_bob_babs_play
    click_button "SPOCK"
    click_button "ROCK"
    expect(page).to have_content "The results are in: Player 1 Wins!"
  end

  scenario 'and as it always has, rock crushes scissors' do 
    human_bob_babs_play
    click_button "SCISSORS"
    click_button "ROCK"
    expect(page).to have_content "The results are in: Player 2 Wins!"
  end
end