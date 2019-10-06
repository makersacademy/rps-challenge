feature 'Enter data' do

  scenario 'submitting info' do
    visit('/')
    fill_in :name1, with: 'Dove'
    click_button "Let's Go!"
    expect(page).to have_content "Dove vs. Computer"
  end

  scenario 'enters move' do
    visit('/')
    fill_in :name1, with: 'Dove'
    click_button "Let's Go!"
    expect(page).to have_button('Shoot!')
  end
  
end
