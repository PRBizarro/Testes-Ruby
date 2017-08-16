def da_boas_vindas
    puts "Bem vindo ao jogo da adivinhação"
    puts "Qual é o seu nome?"
    nome = gets
    puts"\n\n\n\n"
    puts "Começaremos o jogo para você, #{nome}"
end

def sorteia_numero_secreto
    puts "Escolhendo um numero secreto entre 0 e 200..."
    sorteado = 175
    puts "Escolhido...que tal adividinhar hoje nosso número secreto?"
    sorteado
end

def pede_um_numero(chutes,tent, limite_de_tentativas)
    puts "\n\n\n"
    puts "Tentativa #{tentativa} de #{limite_de_tentativas}"
    puts "Chutes até agora: #{chutes}"
    puts "Entre com o numero"
    chute = gets.strip
    puts "Você chutou #{chute}"
    chute.to_i
end

def verifica_se_acertou(numero_secreto,chute)
    acertou = numero_secreto == chute
    if acertou
        puts "Acertou!"
        return true
    end

    maior = numero_secreto > chute
    if maior
        puts "O numero secreto é maior"
    else
        puts "O numero secreto é menor"
    end
    false
end



da_boas_vindas
numero_secreto = sorteado

limite_de_tentativas = 5
chutes = []

for tent in 1..limite_de_tentativas

    chute = pede_um_numero chutes, tent, limite_de_tentativas
    chutes << chute
    total_de_chutes += 1

    if verifica_se_acertou numero_secreto,chute
        break
    end
end