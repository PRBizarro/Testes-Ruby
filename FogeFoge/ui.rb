def da_boas_vindas
	puts "Bem vindo ao Foge-Foge"
	puts "Qual é o seu nome?"
	nome = gets.strip
	puts "\n\n\n\n"
	puts "Começaremos o jogo para você #{nome}"
	nome
end

def desenha_mapa(mapa)
	puts mapa
end

def pede_movimento
	puts "Para onmde deseja ir?"
	direcao = gets.strip	
end

def game_over
	puts "\n\n\n\n"
	puts "GAME OVER"
end