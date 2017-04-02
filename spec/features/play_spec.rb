feature 'play' do

  scenario 'Player can select Rock' do
    visit('/')
    fill_in('player_name', :with => 'Vivien')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content "You chose Rock"
  end

  scenario 'Player can select paper' do
    visit('/')
    fill_in('player_name', :with => 'Vivien')
    click_button('Submit')
    click_button('Paper')
    expect(page).to have_content "You chose Paper"
  end

  scenario 'Player can select Scissors' do
    visit('/')
    fill_in('player_name', :with => 'Vivien')
    click_button('Submit')
    click_button('Scissors')
    expect(page).to have_content "You chose Scissors"
  end

end
