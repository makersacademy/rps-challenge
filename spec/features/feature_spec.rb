feature 'Enter name' do

  before :each do 
    sign_in
  end

  scenario 'submitting names' do
    sign_in
    expect(page).to have_content 'Ned Stark'
  end

  scenario 'choosing game "Human vs. Machine"' do
    sign_in
    click_button('Human Vs. Machine')
    expect(page).to have_content 'Human Vs. Machine'
  end
  
end