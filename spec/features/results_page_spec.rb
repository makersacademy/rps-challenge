feature 'results page' do

  before do
    sign_in
    click_button('ROCK')
  end

  scenario 'presents the winner of the round' do
    expect(page).to have_content 'Computer wins!'
  end

  scenario 'user has the option to play again' do
    click_on('PLAY ANOTHER ROUND')
    expect(page).to have_content 'Patos vs. Computer'
  end

  scenario 'user has the option to end game and return to homepage' do
    click_on('RETURN TO HOMEPAGE')
    expect(page).to have_content "Let's play Rock Paper Scissors!"
  end
end
