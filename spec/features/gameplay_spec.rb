feature 'Gameplay' do
  scenario 'user can choose rock and see result' do
    sign_in_and_play
    click_button 'rock'
    expect(page.text.scan(/Result: Win|Lose|Draw/).length).to eq 1
  end
  scenario 'user can choose paper and see result' do
    sign_in_and_play
    click_button 'paper'
    expect(page.text.scan(/Result: Win|Lose|Draw/).length).to eq 1
  end
  scenario 'user can choose scissors and see result' do
    sign_in_and_play
    click_button 'scissors'
    expect(page.text.scan(/Result: Win|Lose|Draw/).length).to eq 1
  end
end
