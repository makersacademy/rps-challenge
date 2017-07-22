feature 'fill in players name' do
  scenario 'Can enter players name and see it on the screen' do
    sign_in_and_play
    expect(page).to have_content "Antoine is playing"
  end
end
