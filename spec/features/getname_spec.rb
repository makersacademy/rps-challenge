feature 'Input' do
  scenario "get name" do
    visit '/'
    expect(page).to have_content("Let's get a way from the grind! Enter your name to play!")
  end
end 
