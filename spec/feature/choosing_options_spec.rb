feature 'seeing the options' do
  scenario 'seeing rock' do
    sign_up_and_go
    click_button 'Play'
    find_link('Rock').visible?
  end

  scenario 'seeing paper' do
    sign_up_and_go
    click_button 'Play'
    find_link('Paper').visible?
  end

  scenario 'seeing scissors' do
    sign_up_and_go
    click_button 'Play'
    find_link('Scissors').visible?
  end
end
