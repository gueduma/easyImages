require 'rails_helper'

RSpec.describe "eventos/show", type: :view do
  before(:each) do
    @evento = assign(:evento, Evento.create!(
      :nome => "Nome",
      :local => "Local"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Local/)
  end
end
