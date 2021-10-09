feature 'result' do 
  scenario 'result contains Check result' do
    visit("/result")
    expect(page).to have_content("You win")
  end
end