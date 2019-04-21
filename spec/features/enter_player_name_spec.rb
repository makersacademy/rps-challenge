feature 'Enter Names' do
  scenario 'Names show on the /play route' do
    sign_in_and_click_play
    expect(page).to have_content 'Dominic White'
  end
end
