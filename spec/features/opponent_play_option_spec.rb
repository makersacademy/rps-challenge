feature 'opponent play option' do
  scenario 'shows oponent selection' do
    sign_in_and_play
    click_button 'rock'
    x = 'opponent chose rock'
    y = 'opponent chose paper'
    z = 'opponent chose scissors' 
    expect(page).to have_content(x).or have_content(y).or have_content(z)
  end
end