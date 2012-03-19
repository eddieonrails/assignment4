class StudentsController < ApplicationController


  # GET /students/new
  # GET /students/new.json
  def new
    @student = Student.new

        render 'new.html.erb'

  end

    def  error

        render 'students/error.html.erb'

    end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(params[:student])

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'You have been registered.' }
      else
         render :action => "error"

      end
    end

   end
  # PUT /students/1
  # PUT /students/1.json


end
