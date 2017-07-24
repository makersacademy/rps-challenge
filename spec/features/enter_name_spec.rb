feature 'fill in players name' do
  scenario 'Can enter players name and see it on the screen' do
    sign_in_and_play
    expect(page).to have_content "bob is playing Adam"
  end
  scenario 'see the play options' do
    sign_in_and_play
    expect(page).to have_button 'Play'
  end
end
