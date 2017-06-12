class TravelersController < ApplicationController
  def index
    @travelers = Traveler.all

    render("travelers/index.html.erb")
  end

  def show
    @traveler = Traveler.find(params[:id])

    render("travelers/show.html.erb")
  end

  def new
    @traveler = Traveler.new

    render("travelers/new.html.erb")
  end

  def create
    @traveler = Traveler.new

    @traveler.date_of_travel = params[:date_of_travel]
    @traveler.origin_id = params[:origin_id]
    @traveler.destination_id = params[:destination_id]
    @traveler.acceptable_weight_lbs = params[:acceptable_weight_lbs]
    @traveler.expected_fee = params[:expected_fee]
    @traveler.user_id = params[:user_id]

    save_status = @traveler.save

    if save_status == true
      redirect_to("/travelers/#{@traveler.id}", :notice => "Traveler created successfully.")
    else
      render("travelers/new.html.erb")
    end
  end

  def edit
    @traveler = Traveler.find(params[:id])

    render("travelers/edit.html.erb")
  end

  def update
    @traveler = Traveler.find(params[:id])

    @traveler.date_of_travel = params[:date_of_travel]
    @traveler.origin_id = params[:origin_id]
    @traveler.destination_id = params[:destination_id]
    @traveler.acceptable_weight_lbs = params[:acceptable_weight_lbs]
    @traveler.expected_fee = params[:expected_fee]
    @traveler.user_id = params[:user_id]

    save_status = @traveler.save

    if save_status == true
      redirect_to("/travelers/#{@traveler.id}", :notice => "Traveler updated successfully.")
    else
      render("travelers/edit.html.erb")
    end
  end

  def destroy
    @traveler = Traveler.find(params[:id])

    @traveler.destroy

    if URI(request.referer).path == "/travelers/#{@traveler.id}"
      redirect_to("/", :notice => "Traveler deleted.")
    else
      redirect_to(:back, :notice => "Traveler deleted.")
    end
  end
end
