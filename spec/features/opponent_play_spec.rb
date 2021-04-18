feature 'Opponent play' do
  scenario 'Shows oponent selection' do
    x = 0
    y = 0
    z = 0
    20.times do
      sign_in_and_play
      click_button 'rock'
      x += 1 if page.has_content?('opponent chose rock')
      y += 1 if page.has_content?('opponent chose paper')
      z += 1 if page.has_content?('opponent chose scissors')
    end
    expect(x).to be > 0
    expect(y).to be > 0
    expect(z).to be > 0
  end
end
