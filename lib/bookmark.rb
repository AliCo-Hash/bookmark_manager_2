require 'pg'

class Bookmark
  
  def self.all
    @bookmarks = []
    select_environment
    @conn.exec( "SELECT * FROM bookmarks" ) do |result|
      result.each do |row|
        @bookmarks << row['url']
      end
    end
    @bookmarks
  end

  def self.create(website)
    select_environment
    @conn.exec( "INSERT INTO bookmarks(url) VALUES('#{website}')" )
  end
end

private

  def select_environment
    if ENV['ENVIRONMENT'] == 'test'
      @conn = PG.connect(dbname: 'bookmark_manager_test')
    else
      @conn = PG.connect(dbname: 'bookmark_manager')
    end
  end