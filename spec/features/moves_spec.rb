require './app'

feature 'Player 1 move submission' do
  scenario 'Player 1 selects their move and sees on screen' do 
    visit('/')
    fill_in 'name1', with: 'Josh'
    click_button('Submit')
    select "Rock", :from => "first_move"
    expect(page).to have_content('Josh has selected Rock')
  end 
end 