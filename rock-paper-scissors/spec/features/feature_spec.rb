require_relative './web_helpers.rb'

feature 'The names page' do

  scenario 'Asks players to enter their names' do
    visit ('/')
    expect(page).to have_content("Please enter player names")
  end

  scenario 'Confirms 2 player names' do
    sign_in
    expect(page).to have_content("John vs Jane")
  end

  scenario 'Lets the players play' do
    sign_in
    expect(page).to have_button("Let's play!")
  end

end

feature 'The first_move page' do

  scenario 'Tells player1 to start' do
    sign_in
    start_to_play
    expect(page).to have_content("John, it's your turn!")
  end

  scenario 'Allows player1 to submit their choice' do
    sign_in
    start_to_play
    expect(page).to have_button("Enter your choice")
  end

  scenario 'Redirects to a different page if the choice is not valid' do
    sign_in
    start_to_play
    incorrect_move
    expect(page).to have_content("Aw snap John! Your choice wasn't valid.")
    expect(page).to have_content("Choose rock, paper or scissors!")
  end

end

feature 'The second_move page' do

  scenario 'Tells player2 to start' do
    sign_in
    start_to_play
    first_move
    expect(page).to have_content("Jane, it's your turn!")
  end

  scenario 'Allows player1 to submit their choice' do
    sign_in
    start_to_play
    first_move
    expect(page).to have_button("Enter your choice")
  end

  scenario 'Redirects to a different page if the choice is not valid' do
    sign_in
    start_to_play
    first_move
    incorrect_move
    expect(page).to have_content("Aw snap Jane! Your choice wasn't valid.")
    expect(page).to have_content("Choose rock, paper or scissors!")
  end

end

feature 'The result page' do

  scenario 'Declares a winner' do
    sign_in
    start_to_play
    first_move
    second_move
    expect(page).to have_content("John wins!")
  end

end
