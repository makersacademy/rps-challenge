feature 'Homepage welcome' do
  scenario 'Homepage displays welcome information' do
    visit '/'
    expect(page).to have_content('Launch control initiated. Captain: Input name to prepare for launch')
  end
end
