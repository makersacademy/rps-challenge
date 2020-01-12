feature 'Selecting rock paper or scissors' do
  scenario 'player_1 selects Rock and lucy_the_computer selects Rock' do
    visit('/selection')
    click_button("Rock")
    expect(page).to have_content("You selected Rock!")
    expect(page).to have_content("Lucy the Computer selected Rock!")
    expect(page).have_content("Hmm. It's a tie this time")
  end

  scenario 'player_1 selects Paper and lucy_the_computer selects Paper' do
    visit('/selection')
    click_button("Paper")
    expect(page).to have_content "You selected Paper!"
    expect(page).to have_content "Lucy the Computer selected Paper!"
    expect(page).to have_content "Hmm. It's a tie this time"
  end

  scenario 'player_1 selects Scissors and lucy_the_computer selects Scissors' do
    visit('/selection')
    click_button("Scissors")
    expect(page).to have_content "You selected Scissors!"
    expect(page).to have_content "Lucy the Computer selected Scissors!"
    expect(page).to have_content "Hmm. It's a tie this time"
  end
  
scenario 'player_1 selects Rock and lucy_the_computer selects Paper' do
  visit('/selection')
  click_button("Rock")
  expect(page).to have_content "You selected Rock!"
  expect(page).to have_content "Lucy the Computer selected Paper!"
  expect(page).to have_content "Bad luck! You were beaten this time"
end


scenario 'player_1 selects Paper and lucy_the_computer selects Rock' do
  visit('/selection')
  click_button("Paper")
  expect(page).to have_content "You selected Paper!"
  expect(page).to have_content "Lucy the Computer selected Rock!"
  expect(page).to have_content "Congratulations! You beat Lucy the Computer!!!"

end


scenario 'player_1 selects Rock and lucy_the_computer selects Scissors' do
  visit('/selection')
  click_button("Rock")
  expect(page).to have_content "You selected Rock!"
  expect(page).to have_content "Lucy the Computer selected Scissors!"
  expect(page).to have_Content "Congratulations! You beat Lucy the Computer!!!"
end



scenario 'player_1 selects Paper and lucy_the_computer selects Scissors' do
  visit('/selection')
  click_button("Paper")
  expect(page).to have_content "You selected Paper!"
  expect(page).to have_content "Lucy the Computer selected Scissors!"
  expect(page).to have_content "Bad luck! You were beaten this time"
end



scenario 'player_1 selects Scissors and lucy_the_computer selects Paper' do
  visit('/selection')
  click_button("Scissors")
  expect(page).to have_content "You selected Scissors!"
  expect(page).to have_content "Lucy the Computer selected Paper!"
  expect(page).to have_content "Congratulations! You beat Lucy the Computer!!!"
end



scenario 'player_1 selects Scissors and lucy_the_computer selects Rock' do
  visit('/selection')
  click_button("Scissors")
  expect(page).to have_content "You selected Scissors!"
  expect(page).to have_content "Lucy the Computer selected Rock!"
  expect(page).to have_content "Bad luck! You were beaten this time"
end

end

