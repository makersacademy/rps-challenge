feature 'play multiple games' do
  scenario 'user plays a second game' do
    register_name
    click_on 'Rock'
    click_on 'Play again'
    click_on 'Scissors'
    expect(page).to have_content "You chose Scissors"
  end
end