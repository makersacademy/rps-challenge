feature 'entering names' do
  scenario 'submitting names' do 
    sign_in_and_play

    expect(page).to have_content 'Sean vs Tyson'
  end
end