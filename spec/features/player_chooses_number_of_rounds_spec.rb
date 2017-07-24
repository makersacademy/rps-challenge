feature 'choose best of how many rounds (odd numbers only)' do
  before { sign_in_and_play('Alex') }
  scenario 'player chooses 3' do
    sign_in_and_play_custom_rounds('Alex', 3)
    expect(page).to have_content 'best of 3 rounds'
  end
  scenario 'player chooses nothing (defaults to 3)' do
    sign_in_and_play_custom_rounds('Alex', '')
    expect(page).to have_content 'best of 3 rounds'
  end
  scenario 'player chooses even number (defaults to 3)' do
    sign_in_and_play_custom_rounds('Alex', 6)
    expect(page).to have_content 'best of 3 rounds'
  end
  scenario 'player chooses letter (defaults to 3)' do
    sign_in_and_play_custom_rounds('Alex', 'x')
    expect(page).to have_content 'best of 3 rounds'
  end
  scenario 'player chooses 7 ' do
    sign_in_and_play_custom_rounds('Alex', 7)
    expect(page).to have_content 'best of 7 rounds'
  end
end
