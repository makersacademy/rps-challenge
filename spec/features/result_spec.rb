feature 'select rock, paper or scissors' do
  scenario 'input field to make selection' do
    sign_in_and_play
    start_game_and_choose_rock
    expect(page).to have_content "You chose rock Computer chose...rock"
end
end

feature 'computer selects rock, paper or scissors' do
  scenario 'displays computer selection on page' do
  sign_in_and_play
  start_game_and_choose_rock
  expect(page).to have_content "You chose rock Computer chose... Scissors !"
end
end
