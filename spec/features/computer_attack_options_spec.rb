feature 'Computer has three attack options' do

  before do
    sign_in_and_play
  end

  scenario 'Computer can choose Rock' do
    allow_any_instance_of(Computer).to receive(:attack).and_return(:rock)
    click_button 'Rock'
    expect(page).to have_content('Computer chose Rock')
  end

  scenario 'Computer can choose Scissors' do
    allow_any_instance_of(Computer).to receive(:attack).and_return(:scissors)
    click_button 'Rock'
    expect(page).to have_content('Computer chose Scissors')
  end

  scenario 'Computer can choose Paper' do
    allow_any_instance_of(Computer).to receive(:attack).and_return(:paper)
    click_button 'Rock'
    expect(page).to have_content('Computer chose Paper')
  end
end
