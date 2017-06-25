require 'rails_helper'

RSpec.describe "eventos/edit", type: :view do
  before(:each) do
    @evento = assign(:evento, Evento.create!(
      :nome => "MyString",
      :local => "MyString"
    ))
  end

  it "renders the edit evento form" do
    render

    assert_select "form[action=?][method=?]", evento_path(@evento), "post" do

      assert_select "input[name=?]", "evento[nome]"

      assert_select "input[name=?]", "evento[local]"
    end
  end
end
