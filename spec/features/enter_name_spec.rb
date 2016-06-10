feature 'entering player name' do

  scenario 'enter and submit a name on the form' do
    visit '/'
    fill_in('player1', :with => 'Toby')
    click_button(:submit)
  end
end
