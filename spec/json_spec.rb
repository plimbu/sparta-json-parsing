require_relative 'spec_helper'

describe ParseJSON do

before(:each) do
  @first_test = ParseJSON.new("json_exchange_rates.json")
end

  it "should have a value EUR for key base" do
    expect(@first_test.json_file["base"]).to eq("EUR")
  end

  it "should have a data type of floats for the currencies" do
    expect(@first_test.json_file["date"]).to eq("2017-07-26")
  end

  it "should have a data type of floats for the currencies" do
    expect(@first_test.json_file["rates"].values).to all(be_an(Float))
  end
  it "should have a data type of floats for the currencies" do
    expect(@first_test.json_file["rates"].keys).to all(be_an(String))
  end
  it "should have a data type of floats for the currencies" do
    expect(@first_test.json_file["rates"].length).to eq(31)
  end


end
