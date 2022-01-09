feature 'Computer selects' do 
  scenario 'selction is confirmed' do
    enter_bob_hit_play
    click_button "ROCK"
    expect(page).to have_content "GameBot has picked:"
  end
end