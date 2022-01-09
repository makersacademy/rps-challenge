require '.app'

feature 'Second Player Move' do 
  scenario 'Second Player can their moves' do 
    visit('/')
    fill_in 'name1', with: 'Josh'
    click_button('Submit')
    select "Rock", :from => "first_move"
    select "Paper", :from => "second_move"
    expect(page).to have_content('Paper')
  end 
end 