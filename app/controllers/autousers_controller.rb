class AutousersController < ApplicationController
  def index
    @autousers = Autouser.all
  end

  def show
    @autouser = Autouser.find(params[:id])
  end

  def new
    @autouser = Autouser.new
  end

  def create
    @autouser = Autouser.new
    @autouser.id_auto = params[:id_auto]
    @autouser.id_user = params[:id_user]

    if @autouser.save
      redirect_to "/autousers", :notice => "Autouser created successfully."
    else
      render 'new'
    end
  end

  def edit
    @autouser = Autouser.find(params[:id])
  end

  def update
    @autouser = Autouser.find(params[:id])

    @autouser.id_auto = params[:id_auto]
    @autouser.id_user = params[:id_user]

    if @autouser.save
      redirect_to "/autousers", :notice => "Autouser updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @autouser = Autouser.find(params[:id])

    @autouser.destroy

    redirect_to "/autousers", :notice => "Autouser deleted."
  end
end
