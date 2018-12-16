require_relative './web_helpers'

feature 'Testing infrastructure' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_content "Rock! Paper! Scissors!"
  end
end

feature 'Player registration' do
  scenario 'Players fill in their names and see them on screen' do
    sign_in_and_play
    expect(page).to have_content "Rocky 'Scissor-Widowmaker' Balboa"
  end
end

feature 'Player chooses rock paper or scissors' do
  scenario 'Players can input their choice of object' do
    sign_in_and_play
    expect(page).to have_content "Type in your choice: Rock, Paper or Scissors"
    fill_in 'player_choice', with: "Rock"
    click_button 'Submit'
    expect(page).to have_content "Rocky 'Scissor-Widowmaker' Balboa's choice: Rock"
  end
end

feature 'Computer chooses between rock, paper or scissors' do
  scenario 'After player choice, page displays computer choice' do
    sign_in_and_play
    fill_in 'player_choice', with: "Rock"
    click_button 'Submit'
    expect(page).to have_content "Rocky 'Scissor-Widowmaker' Balboa's choice: Rock"
  end
end

feature 'Result of player vs computer is displayed' do
  scenario 'player loss: player chooses rock, computer chooses paper' do
    sign_in_and_play
    allow_any_instance_of(Computer).to receive(:print_choice).and_return("Paper")
    fill_in 'player_choice', with: "Rock"
    click_button 'Submit'
    expect(page).to have_content "You lost!"
  end
  scenario 'player loss: player chooses scissors, computer chooses rock' do
    sign_in_and_play
    allow_any_instance_of(Computer).to receive(:print_choice).and_return("Rock")
    fill_in 'player_choice', with: "Scissors"
    click_button 'Submit'
    expect(page).to have_content "You lost!"
  end
  scenario 'player loss: player chooses paper, computer chooses scissors' do
    sign_in_and_play
    allow_any_instance_of(Computer).to receive(:print_choice).and_return("Scissors")
    fill_in 'player_choice', with: "Paper"
    click_button 'Submit'
    expect(page).to have_content "You lost!"
  end
  scenario 'player win: player chooses paper, computer chooses rock' do
    sign_in_and_play
    allow_any_instance_of(Computer).to receive(:print_choice).and_return("Rock")
    fill_in 'player_choice', with: "Paper"
    click_button 'Submit'
    expect(page).to have_content "You won!"
  end
  scenario 'player win: player chooses rock, computer chooses scissors' do
    sign_in_and_play
    allow_any_instance_of(Computer).to receive(:print_choice).and_return("Scissors")
    fill_in 'player_choice', with: "Rock"
    click_button 'Submit'
    expect(page).to have_content "You won!"
  end
  scenario 'player win: player chooses scissors, computer chooses paper' do
    sign_in_and_play
    allow_any_instance_of(Computer).to receive(:print_choice).and_return("Paper")
    fill_in 'player_choice', with: "Scissors"
    click_button 'Submit'
    expect(page).to have_content "You won!"
  end
  scenario 'player draw: player chooses scissors, computer chooses scissors' do
    sign_in_and_play
    allow_any_instance_of(Computer).to receive(:print_choice).and_return("Scissors")
    fill_in 'player_choice', with: "Scissors"
    click_button 'Submit'
    expect(page).to have_content "It's a draw!"
  end
  scenario 'player draw: player chooses rock, computer chooses rock' do
    sign_in_and_play
    allow_any_instance_of(Computer).to receive(:print_choice).and_return("Rock")
    fill_in 'player_choice', with: "Rock"
    click_button 'Submit'
    expect(page).to have_content "It's a draw!"
  end
  scenario 'player draw: player chooses paper, computer chooses paper' do
    sign_in_and_play
    allow_any_instance_of(Computer).to receive(:print_choice).and_return("Paper")
    fill_in 'player_choice', with: "Paper"
    click_button 'Submit'
    expect(page).to have_content "It's a draw!"
  end
end
