RSpec.describe Api::V1::ProductsController, type: :request do
  let!(:products) {2.times { create(:product) }}
  describe 'GET /api/v1/products' do
    before do
      get '/api/v1/products'
    end
    it 'should respond with 200 status' do
      expect(response).to have_http_status 200
    end
    it 'returns a collection of products' do
      expect(response_json['products'].count).to eq 2
    end
  end
end
