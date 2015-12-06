require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :detail => "MyText",
      :purchase => nil
    ))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do

      assert_select "textarea#comment_detail[name=?]", "comment[detail]"

      assert_select "input#comment_purchase_id[name=?]", "comment[purchase_id]"
    end
  end
end
