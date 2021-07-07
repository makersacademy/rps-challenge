feature 'controller' do

  before :each do 
    sign_in
  end

  scenario 'submitting names' do
    expect(page).to have_content 'Ned Stark'
  end

  scenario 'choosing game "Human vs. Machine"' do
    click_button('Human Vs. Machine')
    expect(page).to have_content 'Ned Stark Vs. The Machine'
  end

  scenario 'allows player to select rock' do
    click_button('Human Vs. Machine')
    click_button('rock')
    expect(page).to have_content 'Ned Stark played rock'
  end

  scenario 'allows player to select paper' do
    click_button('Human Vs. Machine')
    click_button('paper')
    expect(page).to have_content 'Ned Stark played paper'
  end

  scenario 'allows player to select scissors' do
    click_button('Human Vs. Machine')
    click_button('scissors')
    expect(page).to have_content 'Ned Stark played scissors'
  end

  scenario 'shows computer move' do
    click_button('Human Vs. Machine')
    click_button('rock')
    expect(page).to have_content 'The Machine played'
  end

  scenario 'allows a second human player' do
    click_button('Human Vs. Human')
    expect(page).to have_content 'Player 2, please enter your name:'
  end

end
