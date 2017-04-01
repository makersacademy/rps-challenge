feature 'result of choice' do
  scenario "player makes a choice and see's result against game"  do
    register_and_play
    click_button 'Rock'
    expect(page).to have_content "You chose: Rock"
  end
end
