require_relative '../../app'

feature 'Player can choose an option' do
  scenario 'Player chooses rock' do
    sign_in_and_play
    click_button "rock"
    expect(page).to have_content "Ed picked rock"
  end

  scenario 'Player chooses paper' do
    sign_in_and_play
    click_button "paper"
    expect(page).to have_content "Ed picked paper"
  end

  scenario 'Player chooses scissors' do
    sign_in_and_play
    click_button "scissors"
    expect(page).to have_content "Ed picked scissors"
  end
end
