# Controller for the lighthouse leaf.

class Controller < Autumn::Leaf
  FORTUNES = [
    "You will make someone happy today.",
    "Someone you don't expect will be important to you today.",
    "Today will bring unexpected hardships."
  ]
  # Typing "!about" displays some basic information about this leaf.
  
  def did_start_up
    stems.message 'Lightbot at your service! Type "!about" to know about me!'
  end
  
  def about_command(stem, sender, reply_to, msg)
    # This method renders the file "about.txt.erb"
  end

  def ticket_command(stem, sender, reply_to, msg)
    if ("#{msg}" =~ /^\d+$/).class == Fixnum
      "http://rails.lighthouseapp.com/projects/8994/tickets/#{msg}"
    else
      "Come on, enter a valid ticket number."
    end
  end
  
  def wycats_command(stem,sender,reply_to,msg)
    "Yehuda Katz: http://yehudakatz.com/"
  end
end
