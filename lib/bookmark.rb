require 'pg'

class Bookmark
  
  def self.all
    @bookmarks = []
    if ENV['ENVIRONMENT'] == 'test'
      conn = PG.connect(dbname: 'bookmark_manager_test')
    else
      conn = PG.connect(dbname: 'bookmark_manager')
    end
    conn.exec( "SELECT * FROM bookmarks" ) do |result|
      result.each do |row|
        @bookmarks << row['url']
      end
    end
    @bookmarks
  end
end