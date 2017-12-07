class Bestseller
  include HTTParty

  base_uri = "https://api.nytimes.com/svc/books/v3/lists/combined-print-and-e-book-fiction.json"


  def get_books
    response = HTTParty.get( "https://api.nytimes.com/svc/books/v3/lists/combined-print-and-e-book-fiction.json?"+ 'api-key=' + ENV['NYT_API_KEY'])
    response['results'] ['list_name']
  end
end


# '#{base_uri}'
