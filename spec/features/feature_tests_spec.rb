feature 'Testing infrastructure' do 
  scenario 'Can the app runa dn check homepage?' do
    visit ('/')
    expect(page).to have_content "Does this work?"
  end
end