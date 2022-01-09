feature 'Decide winner' do
  scenario 'it is confirmed someone has won' do 
    enter_bob_hit_play
    click_button "ROCK"
    expect(page).to have_content "The results are in:"
  end
end