feature 'Testing Homepage' do
  scenario 'Homepage should have content' do
    visit('/')
    expect(page).to have_content "Players,Are you ready for RSP game!!"
  end
end
