class TipousersController < ApplicationController
  # GET /tipousers
  # GET /tipousers.xml
  def index
    @tipousers = Tipouser.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tipousers }
    end
  end

  # GET /tipousers/1
  # GET /tipousers/1.xml
  def show
    @tipouser = Tipouser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tipouser }
    end
  end

  # GET /tipousers/new
  # GET /tipousers/new.xml
  def new
    @tipouser = Tipouser.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tipouser }
    end
  end

  # GET /tipousers/1/edit
  def edit
    @tipouser = Tipouser.find(params[:id])
  end

  # POST /tipousers
  # POST /tipousers.xml
  def create
    @tipouser = Tipouser.new(params[:tipouser])

    respond_to do |format|
      if @tipouser.save
        format.html { redirect_to(@tipouser, :notice => 'Tipouser was successfully created.') }
        format.xml  { render :xml => @tipouser, :status => :created, :location => @tipouser }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tipouser.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tipousers/1
  # PUT /tipousers/1.xml
  def update
    @tipouser = Tipouser.find(params[:id])

    respond_to do |format|
      if @tipouser.update_attributes(params[:tipouser])
        format.html { redirect_to(@tipouser, :notice => 'Tipouser was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tipouser.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tipousers/1
  # DELETE /tipousers/1.xml
  def destroy
    @tipouser = Tipouser.find(params[:id])
    @tipouser.destroy

    respond_to do |format|
      format.html { redirect_to(tipousers_url) }
      format.xml  { head :ok }
    end
  end
end
