feature 'entering player name' do

  scenario 'enter and submit a name on the form' do
    visit '/'
    fill_in('player', :with => 'Toby')
    click_button(:singleplayer)
  end
end
