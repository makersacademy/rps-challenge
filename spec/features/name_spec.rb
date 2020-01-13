feature 'enter name' do
  scenario "entering player's name" do
    visit '/'
    fill_in :player_name, with: 'Ria'
    click_on 'Submit'
    expect(page).to have_content 'Ria'
  end
end
