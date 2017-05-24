require 'rails_helper'

RSpec.describe "imagems/index", type: :view do
  before(:each) do
    assign(:imagems, [
      Imagem.create!(
        :nome => "Nome",
        :url => "Url",
        :tamanho => 2.5,
        :id_usuario => "",
        :publico => false,
        :extensao => "Extensao"
      ),
      Imagem.create!(
        :nome => "Nome",
        :url => "Url",
        :tamanho => 2.5,
        :id_usuario => "",
        :publico => false,
        :extensao => "Extensao"
      )
    ])
  end

  it "renders a list of imagems" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Extensao".to_s, :count => 2
  end
end
