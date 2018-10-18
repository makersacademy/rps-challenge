feature 'Enter name' do

  before :each do 
    sign_in
  end

  scenario 'submitting names' do
    expect(page).to have_content 'Ned Stark'
  end

end