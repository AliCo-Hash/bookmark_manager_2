# As an internet user
# In order to have quick access to websites I use frequently
# I would like to access a list of website bookmarks
feature 'Shows bookmarks' do
    scenario 'shows the list of bookmarks on the webpage' do
      truncate_table
      Bookmark.create(url: "http://www.makersacademy.com")
      Bookmark.create(url: "http://www.destroyallsoftware.com")
      Bookmark.create(url: "http://www.google.com")
  
      visit('/bookmarks')
      expect(page).to have_content "http://www.makersacademy.com"
      expect(page).to have_content "http://www.google.com"
      expect(page).to have_content "http://www.destroyallsoftware.com"
  end
end
      
