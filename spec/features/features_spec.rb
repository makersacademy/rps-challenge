feature 'Enter name' do
  scenario 'can enter name' do
    visit('/')
    fill_in :first_name, with: "Jackie Chan!"
    click_button 'submit'
    expect(page).to have_content "Welcome Jackie Chan!"
  end
end

feature "Chose scissors" do
  scenario 'Player can choose scissors' do
    visit('/')
    fill_in :first_name, with: "Jackie Chan!"
    click_button 'submit'
    click_button 'Scissors'
    expect(page).to have_content "You have chosen scissors!"
  end
end
