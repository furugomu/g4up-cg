require 'rails_helper'

RSpec.describe EntriesController, :type => :controller do

  let(:valid_attributes) {
    {
      title: '',
      body: '',
      images: [upload('imas9393.jpg')],
    }
  }

  let(:invalid_attributes) {
    {
      title: '',
      body: '',
      images: [],
    }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # EntriesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all entries as @entries" do
      entry = Entry.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:entries)).to eq([entry])
    end
  end

  describe "GET show" do
    it "assigns the requested entry as @entry" do
      entry = Entry.create! valid_attributes
      get :show, {:id => entry.to_param}, valid_session
      expect(assigns(:entry)).to eq(entry)
    end
  end

  describe "GET new" do
    it "assigns a new entry as @entry" do
      get :new, {}, valid_session
      expect(assigns(:entry)).to be_a_new(Entry)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Entry" do
        expect {
          post :create, {:entry => valid_attributes}, valid_session
        }.to change(Entry, :count).by(1)
      end

      it "assigns a newly created entry as @entry" do
        post :create, {:entry => valid_attributes}, valid_session
        expect(assigns(:entry)).to be_a(Entry)
        expect(assigns(:entry)).to be_persisted
      end

      it "redirects to the created entry" do
        post :create, {:entry => valid_attributes}, valid_session
        expect(response).to redirect_to(Entry.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved entry as @entry" do
        post :create, {:entry => invalid_attributes}, valid_session
        expect(assigns(:entry)).to be_a_new(Entry)
      end

      it "re-renders the 'new' template" do
        post :create, {:entry => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

end
