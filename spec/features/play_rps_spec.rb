# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'Play rock/paper/scissors' do
  scenario 'player choosing rock' do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content 'You chose rock'
  end

  scenario 'player choosing paper' do
    sign_in_and_play
    click_button 'paper'
    expect(page).to have_content 'You chose paper'
  end

  scenario 'player choosing scissors' do
    sign_in_and_play
    click_button 'scissors'
    expect(page).to have_content 'You chose scissors'
  end

  scenario 'computer makes a choice' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content 'Computer chose paper'
  end
end