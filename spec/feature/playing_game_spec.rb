feature 'playing the game' do
  scenario 'choosing an option' do
    sign_up_and_go
    click_button 'Play'
    find_link('Rock').visible?
  end

  scenario 'choosing an option' do
    sign_up_and_go
    click_button 'Play'
    find_link('Paper').visible?
  end

  scenario 'seeing the options' do
    sign_up_and_go
    click_button 'Play'
    find_link('Scissors').visible?
  end
end
