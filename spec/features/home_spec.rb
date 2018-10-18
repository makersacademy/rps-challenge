feature 'home page' do
  before do
    visit '/'
  end

  scenario 'user sees a title on the home page' do
    expect(page).to have_content("R P S !")
  end
end
