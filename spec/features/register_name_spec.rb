feature 'Register names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Paulo'
    fill_in :player_2_name, with: 'Helen'
    click_button 'Move to the arena'
    expect(page).to have_content 'Paulo vs. Helen'
  end
end
