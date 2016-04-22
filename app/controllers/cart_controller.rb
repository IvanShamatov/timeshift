class CartController < ApplicationController
  def add_ticket
    puts session['tickets'].inspect
    if !session['tickets'].nil?
      ticket = session['tickets'].select{|t| t['ticket_type'] == params['ticket_type']}.first
      ticket['quantity'] = ticket['quantity'].to_i + 1
    else
      session['tickets'] = [{'ticket_type': params[:'ticket_type'], 'quantity': 1}]
    end
  end
end
