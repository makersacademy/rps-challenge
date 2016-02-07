# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'Play rock/paper/scissors' do
  before do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    sign_in_and_play
  end

  scenario 'player choosing rock' do
    click_button 'rock'
    expect(page).to have_content 'You chose rock'
  end

  scenario 'player choosing paper' do
    click_button 'paper'
    expect(page).to have_content 'You chose paper'
  end

  scenario 'player choosing scissors' do
    click_button 'scissors'
    expect(page).to have_content 'You chose scissors'
  end

  scenario 'computer makes a choice' do
    click_button 'rock'
    expect(page).to have_content 'Computer chose paper'
  end

  scenario 'player can win' do
    click_button 'scissors'
    expect(page).to have_content 'Dave won!'
  end

  scenario 'player can lose' do
    click_button 'rock'
    expect(page).to have_content 'Computer won!'
  end

  scenario 'game can draw' do
    click_button 'paper'
    expect(page).to have_content 'It\'s a draw'
  end
end