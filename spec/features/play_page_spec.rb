require_relative 'web_helpers'

feature 'allows user to visit play page which should display their name' do
  scenario 'user goes to play page and see\'s their name' do
    enter_name
    expect(page).to have_content "Ollie"
  end
end

feature 'can win game' do
  scenario 'if player selects rock and bot selects scissors then player wins' do
    allow_any_instance_of(Bot).to receive(:move).and_return('scissors')
    enter_name
    choose 'rock'
    click_button 'Submit'
    expect(page).to have_content 'Ollie wins!'
  end

  scenario 'if player selects scissors and bot selects paper then player wins' do
    allow_any_instance_of(Bot).to receive(:move).and_return('paper')
    enter_name
    choose 'scissors'
    click_button 'Submit'
    expect(page).to have_content 'Ollie wins!'
  end

  scenario 'if player selects rock and bot selects scissors then player wins' do
    allow_any_instance_of(Bot).to receive(:move).and_return('rock')
    enter_name
    choose 'paper'
    click_button 'Submit'
    expect(page).to have_content 'Ollie wins!'
  end

  scenario 'if player selects rock and bot selects paper then player loses' do
    allow_any_instance_of(Bot).to receive(:move).and_return('paper')
    enter_name
    choose 'rock'
    click_button 'Submit'
    expect(page).to have_content 'Ollie loses!'
  end
end