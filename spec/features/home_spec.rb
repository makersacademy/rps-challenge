feature 'Homepage' do
  scenario 'Has a welcome message' do
    visit('/')
    expect(page).to have_content "Rock. Paper. Scissors."
  end

  scenario 'Asks for name' do
    visit('/')
    expect(page).to have_content "Please enter your name:"
  end
end
