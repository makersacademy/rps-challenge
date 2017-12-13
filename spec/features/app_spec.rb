require './app'

feature 'homepage' do
  scenario 'player visits homepage' do
    visit_homepage
    expect(page).to have_content('Hello and welcome to Rock Paper Scissors!!')
  end
  scenario 'player registers name' do
    register_name
    expect(page).to have_content('Jamie')
  end
end
