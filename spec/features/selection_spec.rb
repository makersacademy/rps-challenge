feature 'Selecting rock paper or scissors' do
  scenario 'player_1 selects Rock and lucy_the_computer selects Rock' do
    allow_any_instance_of(RPSame).to receive(:random_choice).and_return('Rock')
    enter_name_and_play
    click_button 'Rock'
    expect(page).to have_content "You selected Rock!"
    expect(page).to have_content "Lucy the Computer selected Rock!"
    expect(page).have_content "Hmm. It's a tie this time"
  end

  scenario 'player_1 selects Paper and lucy_the_computer selects Paper' do
    allow_any_instance_of(RPSGame).to receive(:random_choice).and_return('Paper')
    enter_name_and_play
    click_button 'Paper'
    expect(page).to have_content "You selected Paper!"
    expect(page).to have_content "Lucy the Computer selected Paper!"
    expect(page).to have_content "Hmm. It's a tie this time"
  end

  scenario 'player_1 selects Scissors and lucy_the_computer selects Scissors' do
    allow_any_instance_of(RPSGame).to receive(:random_choice).and_return('Scissors')
    enter_name_and_play
    click_button 'Scissors'
    expect(page).to have_content "You selected Scissors!"
    expect(page).to have_content "Lucy the Computer selected Scissors!"
    expect(page).to have_content "Hmm. It's a tie this time"
  end
  
scenario 'player_1 selects Rock and lucy_the_computer selects Paper' do
  allow_any_instance_of(RPSGame).to receive(:random_choice).and_return('Paper')
  enter_name_and_play
  click_button 'Rock'
  expect(page).to have_content "You selected Rock!"
  expect(page).to have_content "Lucy the Computer selected Paper!"
  expect(page).to have_content "Bad luck! You were beaten this time"
end


scenario 'player_1 selects Paper and lucy_the_computer selects Rock' do
  allow_any_instance_of(RPSGame).to receive(:random_choice).and_return('Rock')
  enter_name_and_play
  click_button 'Paper'
  expect(page).to have_content "You selected Paper!"
  expect(page).to have_content "Lucy the Computer selected Rock!"
  expect(page).to have_content "Congratulations! You beat Lucy the Computer!!!"

end


scenario 'player_1 selects Rock and lucy_the_computer selects Scissors' do
  allow_any_instance_of(RPSGame).to receive(:random_choice).and_return('Scissors')
  enter_name_and_play
  click_button 'Rock'
  expect(page).to have_content "You selected Rock!"
  expect(page).to have_content "Lucy the Computer selected Scissors!"
  expect(page).to have_Content "Congratulations! You beat Lucy the Computer!!!"
end



scenario 'player_1 selects Paper and lucy_the_computer selects Scissors' do
  allow_any_instance_of(RPSGame).to receive(:random_choice).and_return('Scissors')
  enter_name_and_play
  click_button 'Paper'
  expect(page).to have_content "You selected Paper!"
  expect(page).to have_content "Lucy the Computer selected Scissors!"
  expect(page).to have_content "Bad luck! You were beaten this time"
end



scenario 'player_1 selects Scissors and lucy_the_computer selects Paper' do
  allow_any_instance_of(RPSGame).to receive(:random_choice).and_return('Paper')
  enter_name_and_play
  click_button 'Scissors'
  expect(page).to have_content "You selected Scissors!"
  expect(page).to have_content "Lucy the Computer selected Paper!"
  expect(page).to have_content "Congratulations! You beat Lucy the Computer!!!"
end



scenario 'player_1 selects Scissors and lucy_the_computer selects Rock' do
  allow_any_instance_of(RPSGame).to receive(:random_choice).and_return('Rock')
  enter_name_and_play
  click_button 'Scissors'
  expect(page).to have_content "You selected Scissors!"
  expect(page).to have_content "Lucy the Computer selected Rock!"
  expect(page).to have_content "Bad luck! You were beaten this time"
end

end

