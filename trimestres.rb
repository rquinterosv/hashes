ventas = {
    Enero: 15000,
    Febrero: 22000,
    Marzo: 12000,
    Abril: 17000,
    Mayo: 81000,
    Junio: 13000,
    Julio: 21000,
    Agosto: 41200,
    Septiembre: 25000,
    Octubre: 21500,
    Noviembre: 91000,
    Diciembre: 21000
}

quarters = {}
q = (ventas.values).each_slice(3)

index = 1
q.each do |array|
    key_name = "Q#{index}"
    q_value = array.reduce(0) { |sum, num| sum + num }

    quarters[key_name] = q_value
    index += 1
end

puts quarters