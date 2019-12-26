feature 'choosing your move' do
  scenario 'can pick an option' do
    sign_in_and_go
    expect(page).to have_content 'Enter your move:'
  end
end
