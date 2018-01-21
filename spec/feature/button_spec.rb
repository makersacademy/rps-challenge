feature 'Buttons' do

  scenario 'button rock' do
    sign_in
    expect(page).to have_button('Rock')
  end

  scenario 'button paper' do
    sign_in
    expect(page).to have_button('Paper')
  end

  scenario 'button scissors' do
    sign_in
    expect(page).to have_button('Scissors')
  end

  scenario 'button liazard' do
    sign_in
    expect(page).to have_button('Lizard')
  end

  scenario 'button Spock' do
    sign_in
    expect(page).to have_button('Spock')
  end

  scenario 'button submit' do
    sign_in
    expect(page).to have_button('Submit')
  end
end
