feature 'Testing infrastructure' do
   scenario 'Can run app and see contents' do
     visit('/')
     expect(page).to have_content "Hello RPS!"
   end
end
