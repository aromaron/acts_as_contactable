# frozen_string_literal: true

require "spec_helper"

describe ActsAsContactable::Contactable do
  it "should not be contactable" do
    expect(NotContactable).not_to be_contactable
  end

  it "should be contactable" do
    expect(Contactable).to be_contactable
  end

  it_behaves_like "a contactable_model" do
    let (:contactable) { create(:contactable, name: "a contactable model") }
  end
end