feature 'name' do
  scenario 'enter name and save it' do
    sign_in_and_play
    expect(page).to have_content 'Rocky'
  end
end

feature 'choose a weapon' do
  scenario 'choose rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to_not have_content 'You chose paper!'
    expect(page).to_not have_content 'You chose scissors!'
    expect(page).to have_content 'You chose rock!'
  end

  scenario 'choose scissors' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to_not have_content 'You chose rock!'
    expect(page).to_not have_content 'You chose paper!'
    expect(page).to have_content 'You chose scissors!'
  end

  scenario 'choose paper' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to_not have_content 'You chose rock!'
    expect(page).to_not have_content 'You chose scissors!'
    expect(page).to have_content 'You chose paper!'
  end

  scenario 'computer selects random weapon' do
    allow_any_instance_of(Array).to receive(:shuffle).and_return(['paper'])
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Computer chose paper!'
  end
end
