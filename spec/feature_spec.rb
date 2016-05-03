require_relative 'web_helpers'

feature 'Index Page' do
  scenario 'selects how many players' do
    visit "/"
    click_button 'One Player'
    expect(page).to have_content "Please enter your NAME:"
  end
end

feature 'Sets Name' do
  scenario 'sets player name' do
    sign_in
    expect(page).to have_content "Please pick a move Noah"
  end
end

feature 'Play' do
  it 'has the rock option' do
    sign_in
    find_button('ROCK').click
  end
  it 'has the paper option' do
    sign_in
    find_button('PAPER').click
  end
  it 'has the scissors option' do
    sign_in
    find_button('SCISSORS').click
  end

  scenario 'clicking one will show result' do
    sign_in
    click_button 'ROCK'
    expect(page).to have_content "chose: ROCK"
  end

end
