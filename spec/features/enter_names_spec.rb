feature 'Entering player name' do
  scenario 'when they visit the homepage, they get a form to fill out with their name, which then greets them with their name on screen' do
    sign_in_and_play
    expect(page).to have_content("Welcome Alex. Let's play Rock Paper Scissors!")
  end
end
 