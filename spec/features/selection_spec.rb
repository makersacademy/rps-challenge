feature 'Selecting moves' do
  scenario 'player_1 selects Rock and lucy_the_computer selects rock' do
    allow_any_instance_of(Player).to receive(:random_choice).and_return('Rock')
    enter_name_and_play
    click_button 'Rock'
    expect(page).to have_content 'You selected Rock!'
    expect(page).to have_content 'Lucy the Computer selected Rock!'
  end

  scenario 'player_1 selects Paper and lucy_the_computer selects Paper' do
    allow_any_instance_of(Player).to receive(:random_choice).and_return('Paper')
    enter_name_and_play
    click_button 'Paper'
    expect(page).to have_content 'You selected Paper!'
    expect(page).to have_content 'Lucy the Computer selected Paper!'
  end

  scenario 'player_1 selects Scissors and lucy_the_computer selects Scissors' do
    allow_any_instance_of(Player).to receive(:random_choice).and_return('Scissors')
    enter_name_and_play
    click_button 'Scissors'
    expect(page).to have_content 'You selected Scissors!'
    expect(page).to have_content 'Lucy the Computer selected Scissors!' 
  end
  
scenario 'player_1 selects Rock and lucy_the_computer selects Paper' do
  allow_any_instance_of(Player).to receive(:random_choice).and_return('Paper')
  enter_name_and_play
  click_button 'Rock'
  expect(page).to have_content 'You selected Rock!'
  expect(page).to have_content 'Lucy the Computer selected Paper!'
end


scenario 'player_1 selects Paper and lucy_the_computer selects Rock' do
  allow_any_instance_of(Player).to receive(:random_choice).and_return('Rock')
  enter_name_and_play
  click_button 'Paper'
  expect(page).to have_content 'You selected Paper!'
  expect(page).to have_content 'Lucy the Computer selected Rock!'
end


scenario 'player_1 selects Rock and lucy_the_computer selects Scissors' do
  allow_any_instance_of(Player).to receive(:random_choice).and_return('Scissors')
  enter_name_and_play
  click_button 'Rock'
  expect(page).to have_content 'You selected Rock!'
  expect(page).to have_content 'Lucy the Computer selected Scissors!'
end



scenario 'player_1 selects Paper and lucy_the_computer selects Scissors' do
  allow_any_instance_of(Player).to receive(:random_choice).and_return('Scissors')
  enter_name_and_play
  click_button 'Paper'
  expect(page).to have_content 'You selected Paper!'
  expect(page).to have_content 'Lucy the Computer selected Scissors!'
end



scenario 'player_1 selects Scissors and lucy_the_computer selects Paper' do
  allow_any_instance_of(Player).to receive(:random_choice).and_return('Paper')
  enter_name_and_play
  click_button 'Scissors'
  expect(page).to have_content 'You selected Scissors!'
  expect(page).to have_content 'Lucy the Computer selected Paper!'
end



scenario 'player_1 selects Scissors and lucy_the_computer selects Rock' do
  allow_any_instance_of(Player).to receive(:random_choice).and_return('Rock')
  enter_name_and_play
  click_button 'Scissors'
  expect(page).to have_content 'You selected Scissors!'
  expect(page).to have_content 'Lucy the Computer selected Rock!'
end

end

