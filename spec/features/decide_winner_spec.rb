feature 'Decide winner' do
  scenario 'it is confirmed someone has won' do 
    gamebot_bob_play
    click_button "ROCK"
    expect(page).to have_content "The results are in:"
  end
end