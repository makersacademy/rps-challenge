feature 'Setting up game' do
  scenario "When I submit two names the game greets us using it" do
    visit '/'
    click_button('Multi Player')
    fill_in :player_1_name, with: 'James'
    fill_in :player_2_name, with: 'Natalie'
    click_button("Let's Play")
    expect(page).to have_content "James vs Natalie"
  end

  scenario "Player 2 can also select their move on a seperate page" do
    visit '/'
    click_button('Multi Player')
    fill_in :player_1_name, with: 'James'
    fill_in :player_2_name, with: 'Natalie'
    click_button("Let's Play")
    click_button('rock')
    click_button('paper')
    expect(page).to have_content "paper covers rock"
  end
end
