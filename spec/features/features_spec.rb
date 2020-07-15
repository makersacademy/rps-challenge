feature 'visit homepage' do
  scenario 'when submitting name it will display' do
    visit '/'
    fill_in 'player_name', with: 'Alessa'
    click_on 'Submit'
    expect(page).to have_text "Alessa"
  end
end
