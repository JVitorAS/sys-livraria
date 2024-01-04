import consulta
import conn
def funci(escolha, aba):
    #Opção de Cadastrar
    if escolha.upper() == "C" or escolha.upper == "CADASTRAR":
        #Cadastra um cliente, livro ou venda
        if aba.upper() == "L" or aba.upper():
            nome = input("Qual o nome do livro: ")
            autor = input("Qual o nome do autor: ")
            editora = input("Qual o nome da editora: ")
            consulta.movDado.insert_livro(nome,autor,editora)
        elif aba.upper() == "C" or aba.upper == "CLIENTE" or aba.upper() == "CLIENTES":
            nome = input("Nome do cliente: ")
            cnpj = input("CNPJ da empresa: ")
            empresa = input("Nome da empresa: ")
            consulta.movDado.insert_client(nome,cnpj,empresa)
        elif aba.upper() == "V" or escolha.upper == "VENDAS":
            data = input("Que dia está sendo vendido: ") 
            livro = input("Me fala o nome do livro ou ID dele: ")
            quantidade = input("Me fala a quantidade que está sendo vendida: ") 
            preco = input("Me fala o valor dele: ").replace(",", ".") 
            total = float(preco) * int(quantidade) 
            metodo_pagamento = input("Qual a forma de pagamento: ") 
            cliente = input("Me fala o ID ou o Nome do cliente: ")

    #Opção de Deletar
    elif escolha.upper() == "D" or escolha.upper() == "DELETAR" or escolha.upper() == "DELETA":
        #Deletar Livro
        if aba.upper() == "L" or aba.upper == "LIVRO":
            val = input("Fala o ID do livro ou o nome dele: ")
            if val in consulta.valid_livro():
                id = val
            elif val.isnumeric():
                id = int(val)
            else:
                print("ID ou nome inválido")
            consulta.movDado.delete_livro(id)
        #Deletar Cliente
        elif aba.upper() == "C" or aba.upper() == "CLIENTE":
            val = input("Fala o ID, nome do cliente ou cnpj: ")
            if val.isnumeric():
                id = int(val)
            else:
                id = val
            consulta.movDado.delete_cliente()
        #Deletar Vendas Cliente
        elif aba.upper() == "V" or aba.upper() == "VENDAS":
            idv = input("Digite o ID da venda que deseja deletar: ")
            consulta.movDado.deletar_venda(int(idv))
    #Opção de Listar
    elif escolha.upper() == "L" or escolha.upper() == "LISTAR" or escolha.upper() == "LISTA":
        if aba.upper() == "C" or aba.upper() == "CLIENTE":
            esc = input("Você deseja focar a busca **Nome**, **Empresa** ou **CNPJ**: ")
            if esc.upper() == "NOME" or esc.upper() == "EMPRESA" or esc.upper() == "CNPJ":
                pesq = input("Digite o valor")
                consulta.movDado.insert_client(esc, pesq)
            else:
                consulta.movDado.insert_client()
        
        elif aba.upper() == "L" or aba.upper() == "LIVRO":
            esc = input("Você deseja focar a busca **NOME**, **ID**, **AUTOR**, **EDITAR**: ")
            if esc.upper() == "NOME":
                pesq = ("Digite o valor: ")
                consulta.movDado.select_livro(esc, pesq)
            else:
                consulta.movDado.select_livro()
        
        elif aba.upper() == "VENDAS" or aba.upper == "VENDA":
            esc = esc = input("""Você deseja focar a busca **ID**, **DATA**, 
                            **QUANTIDADE(Para ver quantos itens foram vendidos)**,
                            **METODO PAGAMENTO**: 
                              """)
            if esc.upper() == "ID":
                pesq = input("Digite o ID da venda: ")
                consulta.movDado.select_venda(esc, pesq)
            elif esc.upper() == "DATA":
                esc = "DATA_VENDA"
                pesq = input("Digite a Data: por exemplo -> 12/12/2012 ou 12.12.2012").replace('.', '/')
                consulta.movDado.select_venda(esc, pesq)
            #Aqui para ver a quantidade de algum item que está sendo vendido
            elif esc.upper() == "QUANTIDADE":
                pesq = input("Digite o item que deseja ver a quantidade: ")
                consulta.verQuantidadeItemDaVenda("QUANTIDADE", pesq)
            elif esc.upper() == "METODO DE PAGAMENTO" or esc.upper() == "METODO PAGAMENTO":
                pesq = input("Qual o metodo de pagamento que você deseja ver: ")
                consulta.verMetodosDePagamentos("METODO_PAGAMENTO", pesq)
            else:
                print("Opção invallida")
