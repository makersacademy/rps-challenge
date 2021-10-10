feature 'result' do 
  scenario 'visits result page' do
    visit("/result")
    expect(page).to have_content("You win")
  end
end