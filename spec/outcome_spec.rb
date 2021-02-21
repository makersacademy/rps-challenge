feature 'displays the outcome of the game' do
  scenario 'shows the player if they have won, lost or drawn' do
    srand(4)
    sign_in
    select "Paper", :from => "choice"
    click_button 'submit'
    expect(page).to have_content 'You chose paper & the RPS computer chose scissors'
  end
end

feature 'player can press play again' do
  scenario 'the player wishes to replay and presses play again' do
    sign_in
    select "Paper", :from => "choice"
    click_button 'submit'
    click_button 'Play Again?'
    expect(page).to have_content 'Do your best'
  end
end
