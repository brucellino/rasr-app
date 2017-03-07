class FgapiServer < ApplicationRecord

  # CreateTask is called after cleaning the input of the form
  def CreateTask
  end

  # Called After CreateTask, depending on the status (wait for 201)
  def UploadFile
  end

  def GetTask
  end

  private:
  endpoint
  apiversion
  

end
