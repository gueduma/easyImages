require 'rails_helper'

RSpec.describe "imagems/new", type: :view do
  before(:each) do
    assign(:imagem, Imagem.new(
      :nome => "MyString",
      :url => "MyString",
      :tamanho => 1.5,
      :id_usuario => "",
      :publico => false,
      :extensao => "MyString"
    ))
  end

  it "renders new imagem form" do
    render

    assert_select "form[action=?][method=?]", imagems_path, "post" do

      assert_select "input#imagem_nome[name=?]", "imagem[nome]"

      assert_select "input#imagem_url[name=?]", "imagem[url]"

      assert_select "input#imagem_tamanho[name=?]", "imagem[tamanho]"

      assert_select "input#imagem_id_usuario[name=?]", "imagem[id_usuario]"

      assert_select "input#imagem_publico[name=?]", "imagem[publico]"

      assert_select "input#imagem_extensao[name=?]", "imagem[extensao]"
    end
  end
end
