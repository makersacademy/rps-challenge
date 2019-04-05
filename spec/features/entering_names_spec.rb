
feature "Enter names" do
  scenario 'Submit names of players' do
    visit('/')
    fill_in :player_1_name, with: 'Sol'
    fill_in :player_2_name, with: 'Mike'
    click_button 'Submit'
    expect(page).to have_content 'Sol vs Mike'
  end
end
