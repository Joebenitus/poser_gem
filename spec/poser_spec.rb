require 'spec_helper'

RSpec.describe Poser do
  it "has a version number" do
    expect(Poser::VERSION).not_to be nil
  end

  it "returns a adjective" do
    expect(Poser::Adjective.all).to include(p.adj)
  end

  it "returns a random adjective" do
    expect(Poser::Adjective.all).to include(Poser::Adjective.random)
  end

  # it "returns a noun" do
  #   expect(p.adj).to(eq('foobar'))
  # end
  # it "returns a noun" do
  #   expect(p.adj).to(eq('foobar'))
  # end

end

