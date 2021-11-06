feature 'Player selects Rock | Paper | Scissors' do
  scenario 'user selects one option' do
    visit('/play')
    click_button('Rock')
    find_button('Rock').click
  end
end



  