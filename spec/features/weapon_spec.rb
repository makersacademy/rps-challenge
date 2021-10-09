feature 'Presented with options' do 
  scenario 'user can pick rock, paper or scissors' do
    visit("/options")
    expect(page).to have_content("Enter: Rock, Paper or Scissors")
  end
end