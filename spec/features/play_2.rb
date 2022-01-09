require '.app'

feature 'Second Player Move' do 
  scenario 'Second Player can their moves' do 
    sign_in_and_play
    select "Rock", :from => "first_move"
    select "Paper", :from => "second_move"
    expect(page).to have_content('Paper')
  end 
end
