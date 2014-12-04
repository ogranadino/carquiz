class AutosController < ApplicationController

  helper_method :details

  def details(auto)
    brand = auto.brand
    model = auto.model
    year = auto.year.to_s
    detail = brand+" "+model+" "+year
    return detail
  end


  def index
    @autos = Auto.all
  end

  def userdata
    @autos = Auto.all

    @questions = Question.where(:id_user => current_user.id)

  end



  def show
    @auto = Auto.find(params[:id])
  end

  def new
    @auto = Auto.new
  end

  def create
    @auto = Auto.new
    @auto.brand = params[:brand]
    @auto.model = params[:model]
    @auto.year = params[:year]
    @auto.price_low = params[:price_low]
    @auto.price_high = params[:price_high]
    @auto.mpg_city = params[:mpg_city]
    @auto.mpg_hwy = params[:mpg_hwy]
    @auto.comment = params[:comment]

    if @auto.save
      redirect_to "/autos", :notice => "Auto created successfully."
    else
      render 'new'
    end
  end

  def edit
    @auto = Auto.find(params[:id])
  end

  def update
    @auto = Auto.find(params[:id])

    @auto.brand = params[:brand]
    @auto.model = params[:model]
    @auto.year = params[:year]
    @auto.price_low = params[:price_low]
    @auto.price_high = params[:price_high]
    @auto.mpg_city = params[:mpg_city]
    @auto.mpg_hwy = params[:mpg_hwy]
    @auto.comment = params[:comment]

    if @auto.save
      redirect_to "/autos", :notice => "Auto updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @auto = Auto.find(params[:id])

    @auto.destroy

    redirect_to "/autos", :notice => "Auto deleted."
  end
end
