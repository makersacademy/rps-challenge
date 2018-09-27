require_relative 'web_helpers'


feature 'Play' do
  scenario 'User chooses rock and to play again' do
    submit_name_and_play
    click_button 'ROCK!'
    click_button 'Play Again'
    expect(page).to have_content "Choose rock, paper or scissors."
  end

  scenario 'Display users choice' do
    submit_name_and_play
    click_button 'PAPER!'
    expect(page).to have_content "You chose PAPER!"
  end

  # scenario 'Display users choice' do
  #   submit_name_and_play
  #   allow(Player2.new).to receive(:random_turn).and_return("SCISSORS!")
  #   visit('/play')
  #   expect(page).to have_content "I chose SCISSORS!"
  # end
end
