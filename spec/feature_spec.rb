feature 'homepage' do
  scenario 'player visits homepage' do
    visit('/')
    expect(page).to have_content "Please enter your name:"
  end

  scenario 'player enters name' do
    visit('/')
    fill_in "name", with: "Lady Macbeth"
    click_on "Enter"
    expect(page).to have_content "Let's play Rock, Paper, Scissors!"
  end
end
