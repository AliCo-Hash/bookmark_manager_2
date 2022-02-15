feature 'add bookmarks' do
  scenario 'allow user to add bookmarks to the list' do
    visit('/bookmarks/create')
    fill_in('website', with: 'https://www.myspace.com')
    click_button('Add')
    expect(page).to have_content 'https://www.myspace.com'
  end
end