

feature 'enter name' do
  scenario ' The website welcomes you ' do
    visit('/')
    expect(page).to have_content"Battle of the inanimate objects"
    end
end
