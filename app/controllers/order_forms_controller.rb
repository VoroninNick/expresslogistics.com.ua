class OrderFormsController < ApplicationController
  # GET /order_forms
  # GET /order_forms.json
  def index
    @order_forms = OrderForm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @order_forms }
    end
  end

  # GET /order_forms/1
  # GET /order_forms/1.json
  def show
    @order_form = OrderForm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order_form }
    end
  end

  # GET /order_forms/new
  # GET /order_forms/new.json
  def new
    @order_form = OrderForm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @order_form }
    end
  end

  # GET /order_forms/1/edit
  def edit
    @order_form = OrderForm.find(params[:id])
  end

  # POST /order_forms
  # POST /order_forms.json
  def create
    @order_form = OrderForm.new(params[:order_form])

    respond_to do |format|
      if @order_form.save
        format.html { redirect_to @order_form, notice: 'Order form was successfully created.' }
        format.json { render json: @order_form, status: :created, location: @order_form }
      else
        format.html { render action: "new" }
        format.json { render json: @order_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /order_forms/1
  # PUT /order_forms/1.json
  def update
    @order_form = OrderForm.find(params[:id])

    respond_to do |format|
      if @order_form.update_attributes(params[:order_form])
        format.html { redirect_to @order_form, notice: 'Order form was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @order_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_forms/1
  # DELETE /order_forms/1.json
  def destroy
    @order_form = OrderForm.find(params[:id])
    @order_form.destroy

    respond_to do |format|
      format.html { redirect_to order_forms_url }
      format.json { head :no_content }
    end
  end
end
