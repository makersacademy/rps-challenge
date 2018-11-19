# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature "play game" do 
  scenario 'play a tie game' do
    sign_in_and_play
    select "Paper"
    click_button 'Confirm!'
    select "Paper"
    click_button 'Confirm!'
    expect(page).to have_content 'Tie'
  end

  scenario 'play a player1 win game' do
    sign_in_and_play
    select "Scissors"
    click_button 'Confirm!'
    select "Paper"
    click_button 'Confirm!'
    expect(page).to have_content 'Dave won'
  end

  scenario 'play a player2 win game' do
    sign_in_and_play
    select "Scissors"
    click_button 'Confirm!'
    select "Rock"
    click_button 'Confirm!'
    expect(page).to have_content 'Mittens won'
  end

end