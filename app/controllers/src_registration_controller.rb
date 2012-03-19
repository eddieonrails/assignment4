class SrcRegistrationController  < ApplicationController

   def new

          @student = SrcRegistration.new
          respond_to do |format|
              format.html  # new.html.erb
              format.json  { render :json => @student }
          end

   end

    def create
      @student = SrcRegistration.new(params[:student])
      if @student.save
                    redirect_to(@student,
                            :notice => 'you have been registered')
      else
            render :action => "new"


    end
    end
  end






