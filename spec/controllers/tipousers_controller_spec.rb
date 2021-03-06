require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe TipousersController do

  # This should return the minimal set of attributes required to create a valid
  # Tipouser. As you add validations to Tipouser, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all tipousers as @tipousers" do
      tipouser = Tipouser.create! valid_attributes
      get :index
      assigns(:tipousers).should eq([tipouser])
    end
  end

  describe "GET show" do
    it "assigns the requested tipouser as @tipouser" do
      tipouser = Tipouser.create! valid_attributes
      get :show, :id => tipouser.id.to_s
      assigns(:tipouser).should eq(tipouser)
    end
  end

  describe "GET new" do
    it "assigns a new tipouser as @tipouser" do
      get :new
      assigns(:tipouser).should be_a_new(Tipouser)
    end
  end

  describe "GET edit" do
    it "assigns the requested tipouser as @tipouser" do
      tipouser = Tipouser.create! valid_attributes
      get :edit, :id => tipouser.id.to_s
      assigns(:tipouser).should eq(tipouser)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Tipouser" do
        expect {
          post :create, :tipouser => valid_attributes
        }.to change(Tipouser, :count).by(1)
      end

      it "assigns a newly created tipouser as @tipouser" do
        post :create, :tipouser => valid_attributes
        assigns(:tipouser).should be_a(Tipouser)
        assigns(:tipouser).should be_persisted
      end

      it "redirects to the created tipouser" do
        post :create, :tipouser => valid_attributes
        response.should redirect_to(Tipouser.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved tipouser as @tipouser" do
        # Trigger the behavior that occurs when invalid params are submitted
        Tipouser.any_instance.stub(:save).and_return(false)
        post :create, :tipouser => {}
        assigns(:tipouser).should be_a_new(Tipouser)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Tipouser.any_instance.stub(:save).and_return(false)
        post :create, :tipouser => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested tipouser" do
        tipouser = Tipouser.create! valid_attributes
        # Assuming there are no other tipousers in the database, this
        # specifies that the Tipouser created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Tipouser.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => tipouser.id, :tipouser => {'these' => 'params'}
      end

      it "assigns the requested tipouser as @tipouser" do
        tipouser = Tipouser.create! valid_attributes
        put :update, :id => tipouser.id, :tipouser => valid_attributes
        assigns(:tipouser).should eq(tipouser)
      end

      it "redirects to the tipouser" do
        tipouser = Tipouser.create! valid_attributes
        put :update, :id => tipouser.id, :tipouser => valid_attributes
        response.should redirect_to(tipouser)
      end
    end

    describe "with invalid params" do
      it "assigns the tipouser as @tipouser" do
        tipouser = Tipouser.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Tipouser.any_instance.stub(:save).and_return(false)
        put :update, :id => tipouser.id.to_s, :tipouser => {}
        assigns(:tipouser).should eq(tipouser)
      end

      it "re-renders the 'edit' template" do
        tipouser = Tipouser.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Tipouser.any_instance.stub(:save).and_return(false)
        put :update, :id => tipouser.id.to_s, :tipouser => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested tipouser" do
      tipouser = Tipouser.create! valid_attributes
      expect {
        delete :destroy, :id => tipouser.id.to_s
      }.to change(Tipouser, :count).by(-1)
    end

    it "redirects to the tipousers list" do
      tipouser = Tipouser.create! valid_attributes
      delete :destroy, :id => tipouser.id.to_s
      response.should redirect_to(tipousers_url)
    end
  end

end
