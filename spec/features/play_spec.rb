feature 'Play' do
  scenario 'can choose rock,' do
    sign_in_and_play
    expect(click_button 'Rock')
  end

  scenario 'paper,' do
    sign_in_and_play
    expect(click_button 'Paper')
  end

  scenario 'or scissors' do
    sign_in_and_play
    expect(click_button 'Scissors')
  end
end
