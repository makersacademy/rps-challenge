feature 'Testing infastructure' do
  scenario 'Go to homepage find text' do
    visit('/')
    expect(page).to have_content 'HELLO THERE MR MARKETER!'
  end
end
