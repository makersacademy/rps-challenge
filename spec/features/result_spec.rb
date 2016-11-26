feature 'Computer chooses a random option' do

  scenario 'player chooses "rock" and computer chooses "scissors"' do
    sign_in_and_play
    click_button 'ROCK!'
    expect(page).to have_content "Mike chose ROCK! The computer chose SCISSORS!"
  end

  # scenario 'player chooses "rock" and computer chooses "paper"' do
  #   sign_in_and_play
  #   click_button 'ROCK!'
  #   expect(page).to have_content "Mike chose ROCK! The computer chose PAPER!"
  # end

end
