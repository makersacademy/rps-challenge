feature 'Enter name' do
  scenario 'can enter name' do
    visit('/')
    fill_in :first_name, with: "Jackie Chan"
    click_button 'submit'
    expect(page).to have_content "Welcome Jackie Chan"
  end
end

feature "choose a weapon" do
  scenario 'Player can choose scissors' do
    visit('/')
    fill_in :first_name, with: "Jackie Chan"
    click_button 'submit'
    click_button 'Scissors'
    expect(page).to have_content "You have chosen scissors"
  end
end

feature 'see winner' do
  scenario 'Player plays game and see\'s result' do
    visit('/')
    fill_in :first_name, with: "Jackie Chan"
    click_button 'submit'
    click_button 'Scissors'
    expect(page).to have_content "Result:"
  end
end

feature 'play again' do
  scenario 'player can play again' do
    visit('/')
    fill_in :first_name, with: "Jackie Chan"
    click_button 'submit'
    click_button 'Rock'
    click_button 'play again'
    expect(page).to have_content "Choose your favorite weapon:"
  end
end
