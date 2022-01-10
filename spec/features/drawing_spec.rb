feature 'Matching selections draw' do
  scenario 'rock vs. rock' do 
    human_bob_babs_play
    click_button "ROCK"
    click_button "ROCK"
    expect(page).to have_content "The results are in: It's a draw!"
  end
  
  scenario 'paper vs. paper' do 
    human_bob_babs_play
    click_button "PAPER"
    click_button "PAPER"
    expect(page).to have_content "The results are in: It's a draw!"
  end

  scenario 'scissors vs. scissors' do 
    human_bob_babs_play
    click_button "SCISSORS"
    click_button "SCISSORS"
    expect(page).to have_content "The results are in: It's a draw!"
  end
  
  scenario 'lizard vs. lizard' do 
    human_bob_babs_play
    click_button "LIZARD"
    click_button "LIZARD"
    expect(page).to have_content "The results are in: It's a draw!"
  end
  
  scenario 'spock vs. spock' do 
    human_bob_babs_play
    click_button "SPOCK"
    click_button "SPOCK"
    expect(page).to have_content "The results are in: It's a draw!"
  end
end
