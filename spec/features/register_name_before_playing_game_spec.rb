
feature 'register name of players before playing game' do
  scenario 'obtain the name of players and display them' do
    signup_and_play
    expect(page).to have_content("Ant Vs. Elephant")

  end
end
