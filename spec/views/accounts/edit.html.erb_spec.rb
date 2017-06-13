require 'rails_helper'

RSpec.describe "accounts/edit", type: :view do
  before(:each) do
    @account = assign(:account, Account.create!(
      :firstname => "MyString",
      :lastname => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit account form" do
    render

    assert_select "form[action=?][method=?]", account_path(@account), "post" do

      assert_select "input[name=?]", "account[firstname]"

      assert_select "input[name=?]", "account[lastname]"

      assert_select "input[name=?]", "account[email]"
    end
  end
end
