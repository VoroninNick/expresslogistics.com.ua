class FeedbackFormsController < ApplicationController
  # GET /feedback_forms
  # GET /feedback_forms.json
  def index
    @feedback_forms = FeedbackForm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @feedback_forms }
    end
  end

  # GET /feedback_forms/new
  # GET /feedback_forms/new.json
  def new
    @feedback_form = FeedbackForm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @feedback_form }
    end
  end

  # POST /feedback_forms
  # POST /feedback_forms.json
  def create
    @feedback_form = FeedbackForm.new(params[:feedback_form])

    respond_to do |format|
      if @feedback_form.save
        format.html { redirect_to @feedback_form, notice: 'Feedback form was successfully created.' }
        format.json { render json: @feedback_form, status: :created, location: @feedback_form }
      else
        format.html { render action: "new" }
        format.json { render json: @feedback_form.errors, status: :unprocessable_entity }
      end
    end
  end

end
