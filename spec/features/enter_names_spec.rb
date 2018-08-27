feature 'Enter names' do
  scenario 'should let a player enter a name' do
    enter_name_and_play
    expect(page).to have_content 'Welcome Daniel, get ready to FIGHT!'
  end

end
