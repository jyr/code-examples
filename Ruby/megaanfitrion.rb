#!/usr/bin/env ruby

class MegaAnfitrion
  attr_accessor :nombres
  
  def initialize(nombres = "Mundo")
    @nombres = nombres
  end
  
  def saludar
    if @nombres.nil?
      puts "...."
    elsif @nombres.respond_to?("each")
      @nombres.each do |nombre|
        puts "Hola #{nombre}"
      end
    else
      puts "Hola #{@nombres}"
    end
  end
  
  def adios
    if @nombres.nil?
      puts "..."
    elsif @nombres.respond_to?("join")
      puts "Adios #{@nombres.join(", ")}. Vuelvan pronto."
    else
      puts "Adios #{@nombres}. Vuelve pronto."
    end
  end
  
end

if __FILE__ == $0
  ma = MegaAnfitrion.new
  ma.saludar
  ma.adios
  
  ma.nombres = "Diego"
  ma.saludar
  ma.adios
  
  ma.nombres = ["Alberto", "Beatriz", "Carlos", "David", "Ernesto"]
  ma.saludar
  ma.adios
  
  ma.nombres =nil
  ma.saludar
  ma.adios
end