feature 'Attack' do 
  scenario 'User selects Rock, Paper or Scissors' do
    visit('/')
    fill_in('name', with: 'Mikey')
    click_button('Submit')
    select("Paper", from: "rps")
    click_button('Submit')
    expect(page).to have_content "Mikey chooses"
  end

  scenario 'Able to go back by clicking move selection link' do
    visit('/')
    fill_in('name', with: 'Mikey')
    click_button('Submit')
    select("Paper", from: "rps")
    click_button('Submit')
    click_button('Play again')
    expect(page).to have_content "Make your move"
  end
end