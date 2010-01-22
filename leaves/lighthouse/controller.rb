# Controller for the lighthouse leaf.

class Controller < Autumn::Leaf
  def did_start_up
    stems.message 'Lightbot at your service! Type "!ticket (ticket number)" to get a link.'
  end
  
  def did_receive_channel_message(stem, sender, channel, msg)
    if msg =~ /#(\d{2,})/
      stems.message "http://rails.lighthouseapp.com/projects/8994/tickets/#{$1}"
    end
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
  
  def wycats_command(stem, sender, reply_to, msg)
    "Yehuda Katz: http://yehudakatz.com/"
  end

  def dhh_command(stem, sender, reply_to, msg)
    "David Heinemeier Hansson: http://loudthinking.com/"
  end

  def lifo_command(stem, sender, reply_to, msg)
    "Pratik Naik: http://m.onkey.org/"
  end

  def josevalim_command(stem, sender, reply_to, msg)
    "José Valim: http://yehudakatz.com/"
  end
  
  def carllerche_command(stem, sender, reply_to, msg)
    "Carl Lerche: http://carllerche.com/"
  end
  
  def nzkoz_command(stem, sender, reply_to, msg)
    "Michael Koziarski: http://www.koziarski.com/"
  end
    
  def rizwanreza_command(stem, sender, reply_to, msg)
    "Rizwan Reza: http://rizwanreza.com/"
  end

  def sikachu_command(stem, sender, reply_to, msg)
    "Sikachu: http://sikachu.com/"
  end

  def bugmash_command(stem, sender, reply_to, msg)
    "Bugmash isn't going on, keep checking!"
  end
end
