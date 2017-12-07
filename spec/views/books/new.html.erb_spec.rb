require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      :title => "MyString",
      :summary => "MyString",
      :author => "MyString",
      :pages => 1
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input#book_title[name=?]", "book[title]"

      assert_select "input#book_summary[name=?]", "book[summary]"

      assert_select "input#book_author[name=?]", "book[author]"

      assert_select "input#book_pages[name=?]", "book[pages]"
    end
  end
end
