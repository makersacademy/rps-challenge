feature 'Winning player' do
  
  scenario "player 1 selects rock, player 2 selects scissors" do
    sign_in_and_play
    select('Rock', :from => 'RPS')
    click_button "Submit Choice"
    select('Scissors', :from => 'RPS')
    click_button "Submit Choice"
    expect(page).to have_content("Rock beats Scissors...Dan wins!")
  end

  scenario "player 1 selects paper, player 2 selects scissors" do
    sign_in_and_play
    select('Paper', :from => 'RPS')
    click_button "Submit Choice"
    select('Scissors', :from => 'RPS')
    click_button "Submit Choice"
    expect(page).to have_content("Scissors beats Paper...Millie wins!")
  end

end