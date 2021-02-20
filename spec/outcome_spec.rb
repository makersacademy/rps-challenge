feature 'displays the outcome of the game' do
  scenario 'shows the player if they have won, lost or drawn' do
    srand(4)
    sign_in
    select "Paper", :from => "choice"
    click_button 'submit'
    expect(page).to have_content 'You chose paper --- the RPS computer chose scissors'
  end
end
