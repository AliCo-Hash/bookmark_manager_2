# As an internet user
# In order to have quick access to websites I use frequently
# I would like to access a list of website bookmarks
feature 'Shows bookmarks' do
    scenario 'shows the list of bookmarks on the webpage' do
      visit('/bookmarks')
      expect(page).to have_content "www.google.com"
      expect(page).to have_content "www.youtube.com"
  end
end
      