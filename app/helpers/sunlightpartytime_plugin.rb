class SunlightpartytimePlugin < PluginClass
  public
  def initialize(method, input=nil, stepnum)
    @method = method
    @input = input
    @stepnum = stepnum
    @output = nil
    @apikey = "apikey"
  end

  def switch
    case @method
      when 28 then parties
      else "Unknown Method"
    end
  end
  
  def parties
    s = SunlightPartyTime.new(@apikey)
    @output = s.parties_clean(@input["Legislator Name"])
  end
end
