Dado('que eu realize um get no endpoint {string}') do |url|
    @url = DATA[url]
    @response = BasicAPI.new.get_endpoint(@url)      
end
  
Entao('irei validar o atributo com sucesso') do
    expect(@response.code).to eq 200
    puts "Validando o recebimento do código de resposta #{@response.code}"
    expect(JSON.parse(@response.body)['url']).to eq @url 
end