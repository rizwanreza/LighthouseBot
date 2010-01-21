# Controller for the lighthouse leaf.

class Controller < Autumn::Leaf
  def did_start_up
    stems.message 'Lightbot at your service! Type "!ticket (ticket number)" to get a link.'
  end
  
  def about_command(stem, sender, reply_to, msg)
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
