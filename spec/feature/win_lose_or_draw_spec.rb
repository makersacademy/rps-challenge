feature 'declares whether the player wins, loses or draws' do
  scenario 'user selects rock, computer selects paper' do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:paper)
    visit('/')
    fill_in 'player', with: 'Alex'
    click_button 'Submit'
    click_button 'rock'
    expect(page).to have_content('lose')
  end

  scenario 'user selects rock, computer selects rock' do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:rock)
    visit('/')
    fill_in 'player', with: 'Alex'
    click_button 'Submit'
    click_button 'rock'
    expect(page).to have_content('draw')
  end

  scenario 'user selects rock, computer selects scissors' do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:scissors)
    visit('/')
    fill_in 'player', with: 'Alex'
    click_button 'Submit'
    click_button 'rock'
    expect(page).to have_content('win')
  end

  scenario 'user selects paper, computer selects paper' do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:paper)
    visit('/')
    fill_in 'player', with: 'Alex'
    click_button 'Submit'
    click_button 'paper'
    expect(page).to have_content('draw')
  end

  scenario 'user selects paper, computer selects rock' do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:rock)
    visit('/')
    fill_in 'player', with: 'Alex'
    click_button 'Submit'
    click_button 'paper'
    expect(page).to have_content('win')
  end

  scenario 'user selects paper, computer selects scissors' do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:scissors)
    visit('/')
    fill_in 'player', with: 'Alex'
    click_button 'Submit'
    click_button 'paper'
    expect(page).to have_content('lose')
  end

  scenario 'user selects scissors, computer selects paper' do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:paper)
    visit('/')
    fill_in 'player', with: 'Alex'
    click_button 'Submit'
    click_button 'scissors'
    expect(page).to have_content('win')
  end

  scenario 'user selects scissors, computer selects rock' do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:rock)
    visit('/')
    fill_in 'player', with: 'Alex'
    click_button 'Submit'
    click_button 'scissors'
    expect(page).to have_content('lose')
  end

  scenario 'user selects scissors, computer selects scissors' do
    allow_any_instance_of(Computer).to receive(:choice).and_return(:scissors)
    visit('/')
    fill_in 'player', with: 'Alex'
    click_button 'Submit'
    click_button 'scissors'
    expect(page).to have_content('draw')
  end
end
