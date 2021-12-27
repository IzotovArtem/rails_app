class PackagesController < ApplicationController
  def new
    @package = Package.new
  end

  def show
    @package = Package.find(params[:id])
  end

  def create
    @package = Package.new(package_params)

    if @package.save
      redirect_to @package
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def package_params
      params.require(:package).permit(:name, :body, :patronymic, :phonenumber,
                                      :email, :length, :width, :height,
                                      :weight, :pofd, :destination, :distance, :price)
    end
end
