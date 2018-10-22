feature 'Testing infrastructure' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_content
  end

  scenario 'draws when players choose the same weapon' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    visit('/')
    fill_in('player_name', with: 'Bill')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content 'You drew!'
  end

  scenario 'player can win' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    visit('/')
    fill_in('player_name', with: 'Bill')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content 'You win!'
  end

  scenario 'player can lose' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    visit('/')
    fill_in('player_name', with: 'Bill')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content 'You lose!'
  end
end
