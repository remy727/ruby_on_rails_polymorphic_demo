# frozen_string_literal: true

require "rails_helper"

RSpec.describe Product, type: :model do
  it "should have pictures" do
    pictures = Product.reflect_on_association(:pictures)
    expect(pictures.macro).to(eq(:has_many))
  end
end
