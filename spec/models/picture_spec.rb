# frozen_string_literal: true

require "rails_helper"

RSpec.describe Picture, type: :model do
  it "should have a polymorphic relationship" do
    imageable = Picture.reflect_on_association(:imageable)
    expect(imageable.macro).to(eq(:belongs_to))
  end
end
