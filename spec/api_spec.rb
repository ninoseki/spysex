RSpec.describe Spyse::API, :vcr do
  let(:api) { Spyse::API.new }

  describe "#get" do
    it do
      res = api.get("/email/bill@gmail.com")
      expect(res).to be_a(Hash)
    end
  end

  describe "#post" do
    it do
      search_params = [
        {
          email: {
            operator: "eq",
            value: "bill@gmail.com"
          }
        }
      ]
      params = { search_params: search_params }.compact
      res = api.post("/email/search", params)
      expect(res).to be_a(Hash)
    end
  end
end
