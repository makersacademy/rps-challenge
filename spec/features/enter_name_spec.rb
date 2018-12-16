feature 'Testing infrastructure' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_content "Rock! Paper! Scissors!"
  end
end

feature 'Player registration' do
scenario 'Players fill in their names and see them on screen' do
    visit('/')
    fill_in 'player_name', with: "Rocky 'Scissor-Widowmaker' Balboa"
    click_button 'Submit'
    expect(page).to have_content "Rocky 'Scissor-Widowmaker' Balboa"
  end

feature 'Player chooses rock paper or scissors' do
scenario 'Players can input their choice of object' do
    visit('/')
    fill_in 'player_name', with: "Rocky 'Scissor-Widowmaker' Balboa"
    click_button 'Submit'
    expect(page).to have_content "Type in your choice: Rock, Paper or Scissors"
    fill_in 'player_choice', with: "Rock"
  click_button 'Submit'
  expect(page).to have_content "Rocky 'Scissor-Widowmaker' Balboa's choice: Rock"
  end
end

feature 'Computer chooses rock paper or scissors' do
scenario 'After player choice, page displays computer choice' do
    visit('/')
    fill_in 'player_name', with: "Rocky 'Scissor-Widowmaker' Balboa"
    click_button 'Submit'
    fill_in 'player_choice', with: "Rock"
  click_button 'Submit'
  expect(page).to have_content "Rocky 'Scissor-Widowmaker' Balboa's choice: Rock"
  end
end

end
