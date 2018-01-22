feature 'Radio Buttons' do
  scenario 'radio rock chosen' do
    sign_in
    choose('rock')
    expect(page).to have_checked_field('rock')
  end

  scenario 'radio paper' do
    sign_in
    expect(page).to have_unchecked_field('paper')
  end

  scenario 'radio scissors' do
    sign_in
    expect(page).to have_unchecked_field('scissors')
  end

  scenario 'radio liazard' do
    sign_in
    expect(page).to have_unchecked_field('lizard')
  end

  scenario 'radio Spock' do
    sign_in
    expect(page).to have_checked_field('spock')
  end

  scenario 'radio submit' do
    sign_in
    expect(page).to have_button('Submit')
  end
end
