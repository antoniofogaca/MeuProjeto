# saida de dados
print 'Digite seu nome: '

# Recebendo uma entrada do teclado
name = gets.chomp

# saida utilizando puts
# uses códigos ruby dentro de uma string com #{code}

print 'Digite seu sobrenome: '
sobrenome = gets.chomp

puts "Helo #{name} #{sobrenome}!"

# Somando variaveis apartir de uma entrada de dados
# O .to_i é um metodo do ruby que transforma a string em um numero inteiro

print "Digite o primeiro valor inteiro: "
number1 = gets.chomp.to_i
print "Digite o segundo valor inteiro: "
number2 = gets.chomp.to_i
resultado = number1 + number2
puts "A soma dos valores inteiros é #{resultado}"

# Trabalhando com IF else elseIF
print 'Informe o dia da semana: '
day = gets.chomp

print 'Digite o numero correspondente ao dia da semana: '
numero = gets.chomp.to_i

if day == 'Domingo' and numero == 7
    lunch = day
elsif day == 'Terça'   
    lunch = day
else
    lunch = 'segunda feira'
end 
puts "'Hoje é #{lunch}"

# Utilizando o comando unless no lugar do if

#Exemplo 01 

product_status = 'closed'
unless product_status == 'open'
    check_change = 'can'
else
    check_change = 'can not'
end
puts "Exemplo 01 - You #{check_change} change the product "

#Exemplo 02 - usando o if not que é iqual ao unless

product_status = 'closed'
if not product_status == 'open'
    check_change = 'can'
else
    check_change = 'can not'
end
puts "Exemplo 02 - You #{check_change} change the product "

# Utilizando o camando case when else

puts 'Digite o mes que você nasceu: '

month = gets.chomp.to_i

case month
    when 1..3
        puts 'Você nasceu no começo do ano'
    when 9..12
        puts 'Você nasceu no final do ano'        
    when 4..6
        puts 'Você nasceu na primeira metado do ano'
    when 7..9
        puts 'Você nasceu na segunda metade do ano'
    else
        puts 'Não foi possivel identificar o mes de seu nascimento'
    end

# Utilizando o comando For para ler um Array de frutas
# Exemplo 01

frutas = ['Maçã','Laranja','Maga']
for fruta in frutas
    puts fruta
end

# Exemplo 02

frutas = ['Maçã','Laranja','Maga']
cont = 1
for x in frutas
    puts x
    puts cont
    cont = cont + 1
end

# Uilizando o comando while

x = 1
while x < 10
    puts x
    x +=1
end

# Utilizando o comando loop do

#Exemplo 01 
cont = 1
loop do
    puts cont
    if cont == 10
        break
    end
    # Incrementa a variavel cont
    cont +=1
end

#Exemplo 02 
cont = 1
loop do
    puts cont
    break if cont == 10
    # Incrementa a variavel cont
    cont +=1
end

#Utilizando o comando de loop times
10.times do
    puts 'ola Fogaça'
end

# Criando um pequeno programa utilizando alguns comando aprendidos até aqui

result = ''
loop do
    puts result
    puts 'Selecione uma das seguintes opções'
    puts '1 - Descobrir a idade de uma pessoa'
    puts '0 - Sair'
    print 'Opçoes: '

    opcao = gets.chomp.to_i
    if opcao == 1
        print 'Digite o ano de nascimento'
        year_of_birth = gets.chomp.to_i
        print 'Digite o ano atual'
        current_year = gets.chomp.to_i
        age = current_year - year_of_birth
        result = "Quem nasceu no ano de #{year_of_birth}, tem #{age} ano em #{current_year}"
    elsif opcao == 0
        break
    else
        result = 'Opção Inválida'        
    end
    # Comando que limpa o consolte (tela)    
    system 'clear'
end