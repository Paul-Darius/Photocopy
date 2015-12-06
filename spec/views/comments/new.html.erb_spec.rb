require 'rails_helper'

RSpec.describe "comments/new", type: :view do
  before(:each) do
    assign(:comment, Comment.new(
      :detail => "MyText",
      :purchase => nil
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "textarea#comment_detail[name=?]", "comment[detail]"

      assert_select "input#comment_purchase_id[name=?]", "comment[purchase_id]"
    end
  end
end
