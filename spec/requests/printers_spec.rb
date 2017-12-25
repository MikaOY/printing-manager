
require 'rails_helper'

RSpec.describe 'Printers API' do
  # Initialize the test data
  let!(:printers) do
    # create list of printers
    created_printers = create_list(:printer, 3) 
    return created_printers
  end
  let(:id) { printers.first.id }

  # Test suite for GET /printers
  describe 'GET /printers' do
    before { get "/printers" }

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end

    # it 'returns all printers' do
    #   expect(json.size).to eq(3)
    #   print(json)
    # end
  end

  # Test suite for GET /printers/:id
  describe 'GET /printers/:id' do
    before { get "/printers/#{id}" }

    context 'when printer exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      # it 'returns the printer' do
      #   expect(json['id']).to eq(id)
      # end
    end

    context 'when printer does not exist' do
      let(:id) { 50 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Printer/)
      end
    end
  end

  # Test suite for POST /printers
  describe 'POST /printers' do
    let(:valid_attributes) { { name: 'Tika BluJay', startup_cost: 5.00 } }

    context 'when request attributes are valid' do
      before { post "/printers", params: valid_attributes }

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when an invalid request' do
      before { post "/printers", params: {} }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      # it 'returns a failure message' do
      #   expect(response.body).not_to be_empty 
      #   expect(response.body).to match(/Validation failed: Title can't be blank/)
      # end
    end
  end

  # Test suite for PUT /printers/:id
  describe 'PUT /printers/:id' do
    let(:valid_attributes) { { name: 'Tika BlackBird', startup_cost: 5.00 } }

    before { put "/printers/#{id}", params: valid_attributes }

    context 'when printer exists' do
      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end

      it 'updates the printer' do
        updated_printer = Printer.find(id)
        expect(updated_printer.title).to match(/Tika Blackbird/)
      end
    end

    context 'when the printer does not exist' do
      let(:id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      # it 'returns a not found message' do
      #   expect(response.body).to match(/Couldn't find Printer/)
      # end
    end
  end

  # Test suite for DELETE /printers/:id
  describe 'DELETE /printers/:id' do
    before { delete "/printers/#{id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
