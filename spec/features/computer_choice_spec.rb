feature 'The computer makes a random selection for their weapon' do
  scenario 'they can pick scissors' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    visit('/')
    enter_name_and_submit
    fill_in :player_selection, with: 'rock'
    click_button('Play!')
    expect(page).to have_content 'Computer selected scissors'
  end

  scenario 'they can pick rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return('rock')
    visit('/')
    enter_name_and_submit
    fill_in :player_selection, with: 'rock'
    click_button('Play!')
    expect(page).to have_content 'Computer selected rock'
  end

  scenario 'they can pick paper' do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    visit('/')
    enter_name_and_submit
    fill_in :player_selection, with: 'rock'
    click_button('Play!')
    expect(page).to have_content 'Computer selected paper'
  end
end
