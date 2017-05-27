feature 'outcome of game is displayed correctly' do
  scenario 'player is taken to results page after choosing weapon' do
    sign_in
    click_link('Rock')
    expect(page).to have_content 'You chose'
  end

  scenario 'player can see their choice on results page' do
    sign_in
    click_link('Rock')
    expect(page).to have_content 'You chose Rock'
  end

  scenario 'player can see choice of computer on results page' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    sign_in
    click_link('Rock')
    expect(page).to have_content 'The computer chose Scissors'
  end

end
