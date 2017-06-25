require 'capybara/rspec'



feature 'allow a player to register with his name' do
  before do
  visit '/'
  fill_in 'name', with: 'Alessandro'
  click_button 'Submit'
  end
  scenario 'submit name' do
    expect(page).to have_content('Alessandro')
  end
end

feature 'playing a game of RPS' do
  before do
    visit '/'
    fill_in 'name', with: 'Alessandro'
    click_button 'Submit'
  end
  scenario 'see the options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'choose an option' do
    click_button 'Rock'
    expect(page).to have_content 'Alessandro chose Rock!'
  end

  scenario 'computer chooses a random option' do


  end

  scenario 'player wins' do
    allow_any_instance_of(Opponent).to receive(:choice).and_return(:scissors)
    click_button 'Rock'
    expect(page).to have_content 'Alessandro wins.'
  end

  scenario 'player loses' do
    allow_any_instance_of(Opponent).to receive(:choice).and_return(:paper)
    click_button 'Rock'
    expect(page).to have_content 'Alessandro loses.'
  end

    scenario 'player draws' do
    allow_any_instance_of(Opponent).to receive(:choice).and_return(:rock)
    click_button 'Rock'
    expect(page).to have_content 'Alessandro draws.'
  end
end
