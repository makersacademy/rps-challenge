feature 'name is saved by game' do
  scenario 'after submitting name in index form, name appears on following screen' do
    visit '/names'
#    fill_in :name, with: "Miri"
    click_button 'Submit'
    expect(page).to have_content("Miri")
  end
end
