require 'bookmark'
describe Bookmark do
  describe '.all' do
    it 'should return all bookmarks' do
      truncate_table
      Bookmark.create('http://www.makersacademy.com')
      expect(Bookmark.all).to include('http://www.makersacademy.com')
    end
  end
end