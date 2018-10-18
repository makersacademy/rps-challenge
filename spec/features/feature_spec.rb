feature 'Enter name' do

  before :each do 
    sign_in
  end

  scenario 'submitting names' do
    sign_in
    expect(page).to have_content 'Ned Stark'
  end

  scenario 'choosing game "Human vs. Machine"' do
    sign_in
    click_button('Human Vs. Machine')
    expect(page).to have_content 'Human Vs. Machine'
  end

  scenario 'allows player to select rock' do
    sign_in
    click_button('Human Vs. Machine')
    click_button('rock')
    expect(page).to have_content 'You played rock'
  end

  scenario 'allows player to select paper' do
    sign_in
    click_button('Human Vs. Machine')
    click_button('paper')
    expect(page).to have_content 'You played paper'
  end

  scenario 'allows player to select scissors' do
    sign_in
    click_button('Human Vs. Machine')
    click_button('scissors')
    expect(page).to have_content 'You played scissors'
  end

  scenario 'shows computer move' do
    sign_in
    click_button('Human Vs. Machine')
    click_button('rock')
    expect(page).to have_content 'The computer played'
  end

end
