require './app'

feature 'Player 1 move submission' do
  scenario 'Player 1 selects their move and sees on screen' do 
    sign_in_and_play
    select "Rock", :from => "first_move"
    expect(page).to have_content('Rock')
  end 
end
