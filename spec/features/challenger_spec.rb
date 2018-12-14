require_relative '../../rps_app'

 feature 'Challenger name' do
  scenario "challenger's name submitted, then displayed" do
    visit('/')
    fill_in :challenger, with: 'Link'
    click_button 'Submit'
    expect(page).to have_content 'Link'
  end
end
