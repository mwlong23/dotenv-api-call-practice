require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :title => "MyString",
      :summary => "MyString",
      :author => "MyString",
      :pages => 1
    ))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "input#book_title[name=?]", "book[title]"

      assert_select "input#book_summary[name=?]", "book[summary]"

      assert_select "input#book_author[name=?]", "book[author]"

      assert_select "input#book_pages[name=?]", "book[pages]"
    end
  end
end
