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

describe TimeOffsController do

  # This should return the minimal set of attributes required to create a valid
  # TimeOff. As you add validations to TimeOff, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "time_off" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TimeOffsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all time_offs as @time_offs" do
      time_off = TimeOff.create! valid_attributes
      get :index, {}, valid_session
      assigns(:time_offs).should eq([time_off])
    end
  end

  describe "GET show" do
    it "assigns the requested time_off as @time_off" do
      time_off = TimeOff.create! valid_attributes
      get :show, {:id => time_off.to_param}, valid_session
      assigns(:time_off).should eq(time_off)
    end
  end

  describe "GET new" do
    it "assigns a new time_off as @time_off" do
      get :new, {}, valid_session
      assigns(:time_off).should be_a_new(TimeOff)
    end
  end

  describe "GET edit" do
    it "assigns the requested time_off as @time_off" do
      time_off = TimeOff.create! valid_attributes
      get :edit, {:id => time_off.to_param}, valid_session
      assigns(:time_off).should eq(time_off)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new TimeOff" do
        expect {
          post :create, {:time_off => valid_attributes}, valid_session
        }.to change(TimeOff, :count).by(1)
      end

      it "assigns a newly created time_off as @time_off" do
        post :create, {:time_off => valid_attributes}, valid_session
        assigns(:time_off).should be_a(TimeOff)
        assigns(:time_off).should be_persisted
      end

      it "redirects to the created time_off" do
        post :create, {:time_off => valid_attributes}, valid_session
        response.should redirect_to(TimeOff.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved time_off as @time_off" do
        # Trigger the behavior that occurs when invalid params are submitted
        TimeOff.any_instance.stub(:save).and_return(false)
        post :create, {:time_off => { "time_off" => "invalid value" }}, valid_session
        assigns(:time_off).should be_a_new(TimeOff)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        TimeOff.any_instance.stub(:save).and_return(false)
        post :create, {:time_off => { "time_off" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested time_off" do
        time_off = TimeOff.create! valid_attributes
        # Assuming there are no other time_offs in the database, this
        # specifies that the TimeOff created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        TimeOff.any_instance.should_receive(:update).with({ "time_off" => "MyString" })
        put :update, {:id => time_off.to_param, :time_off => { "time_off" => "MyString" }}, valid_session
      end

      it "assigns the requested time_off as @time_off" do
        time_off = TimeOff.create! valid_attributes
        put :update, {:id => time_off.to_param, :time_off => valid_attributes}, valid_session
        assigns(:time_off).should eq(time_off)
      end

      it "redirects to the time_off" do
        time_off = TimeOff.create! valid_attributes
        put :update, {:id => time_off.to_param, :time_off => valid_attributes}, valid_session
        response.should redirect_to(time_off)
      end
    end

    describe "with invalid params" do
      it "assigns the time_off as @time_off" do
        time_off = TimeOff.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TimeOff.any_instance.stub(:save).and_return(false)
        put :update, {:id => time_off.to_param, :time_off => { "time_off" => "invalid value" }}, valid_session
        assigns(:time_off).should eq(time_off)
      end

      it "re-renders the 'edit' template" do
        time_off = TimeOff.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TimeOff.any_instance.stub(:save).and_return(false)
        put :update, {:id => time_off.to_param, :time_off => { "time_off" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested time_off" do
      time_off = TimeOff.create! valid_attributes
      expect {
        delete :destroy, {:id => time_off.to_param}, valid_session
      }.to change(TimeOff, :count).by(-1)
    end

    it "redirects to the time_offs list" do
      time_off = TimeOff.create! valid_attributes
      delete :destroy, {:id => time_off.to_param}, valid_session
      response.should redirect_to(time_offs_url)
    end
  end

end