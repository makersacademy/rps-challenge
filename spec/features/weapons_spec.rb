feature 'choose_weapons' do
  before { sign_in_and_play }

  scenario 'can select rock' do
    click_button 'start'
    click_button 'rock'
    expect(page).to have_content 'you chose rock'
  end

  scenario 'can select paper' do
    click_button 'start'
    click_button 'paper'
    expect(page).to have_content 'you chose paper'
  end

  scenario 'can select scissors' do
    click_button 'start'
    click_button 'scissors'
    expect(page).to have_content 'you chose scissors'
  end
end
