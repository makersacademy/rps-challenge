feature 'Infrastructure test' do
  scenario 'Loads page with Hello!' do
    visit('/')
    expect(page).to have_content('Hello')
  end
end

feature 'Input field for name' do
  scenario 'Be able to register name' do
    enter_name_and_submit
    expect(page).to have_content('Dave')
  end
end

feature 'Should have buttons to play a game' do 
  scenario 'Be able to select rock' do
    enter_name_and_submit
    expect(page).to have_button("Rock")
  end

  scenario 'Be able to select paper' do
    enter_name_and_submit
    expect(page).to have_button("Paper")
  end

  scenario 'Be able to select scissors' do
    enter_name_and_submit
    expect(page).to have_button("Scissors")
  end
end

