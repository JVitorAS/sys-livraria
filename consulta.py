import conn

class movDado:
    def __init__(self):
        self.val1 = None
        self.val2 = None
        self.val3 = None
        self.val4 = None
        self.val5 = None
        self.val6 = None
        self.val7 = None
        self.cursor = conn.cursor()

    @staticmethod
    def insert_client(val1, val2, val3):
        cursor = conn.cursor()
        try:
            sql = "INSERT INTO CLIENTE(NOME, CNPJ, EMPRESA) VALUES (?, ?, ?)"
            cursor.execute(sql, (val1, val2, val3))
            conn.commit()
        except Exception as e:
            conn.rollback()
            print(f"Error: {e}")
        finally:
            cursor.close()

    @staticmethod
    def insert_venda(val1, val2, val3, val4, val5, val6, val7, cursor):
        try:
            if val1.isdate():
                if not val2.isnumeric():
                    id_Client = cursor.execute("SELECT ID FROM CLIENTE WHERE NOME = ?", (val2,)).fetchone()
                    if val3.isnumeric():
                        if val4.isnumeric() and val5.isnumeric():
                            if isinstance(val6, str): 
                                if not val7.isnumeric():
                                    id_Livro = cursor.execute("SELECT ID FROM LIVRO WHERE NOME = ?", (val7,)).fetchone()
                                    sql = '''
                                        INSERT INTO VENDASLIVROS(DATA_VENDA, LIVRO_ID, QUANTIDADE,
                                        PRECO_UNITARIO, TOTAL, METODO_PAGAMENTO, CLIENTE_ID)
                                        VALUES (?, ?, ?, ?, ?, ?, ?)
                                    '''
                                    cursor.execute(sql, (val1, id_Livro[0], val3, val4, val5, val6, id_Client[0]))
                                    conn.commit()
                                else:
                                    print("val7 should not be numeric.")
                            else:
                                print("val6 should be a string.")
                        else:
                            print("val4 and val5 should be numeric.")
                    else:
                        print("val3 should be numeric.")
                else:
                    print("val2 should not be numeric.")
            else:
                print("val1 should be a date.")
        except Exception as e:
            conn.rollback()
            print(f"Error {e}")
        finally:
            cursor.close()

    @staticmethod
    def insert_livro(val1, val2, val3, cursor):
        try:
            sql = "INSERT INTO LIVROS(TITULO, AUTOR, EDITORA) VALUES (?, ?, ?)"
            cursor.execute(sql, (val1, val2, val3))
            conn.commit()
        except Exception as e:
            print(f"Error: {e}")
        finally:
            cursor.close()
    
    @staticmethod
    def select_clientes(val1, val2, cursor):
        try:
            if val1 != None:
                sql = f"SELECT * FROM CLIENTE WHERE {val1} = ?"
                return cursor.execute(sql, (val2,)).fetchall()
            else:
                sql = "SELECT * FROM CLIENTE"
            return cursor.execute(sql).fetchall()
        except Exception as e:
            print(f"Error: {e}")
        finally:
            cursor.close()

    @staticmethod
    def select_venda(val1, val2, val3, val4, cursor):
        try:
            if val1:
                if val3 == "LIVRO":
                    tabela = "SELECT ID FROM LIVRO = {val4}"
                    cursor.prepare(tabela)
                    livro_id = cursor.execute(None, ()).fetchone()
                elif val4 == "CLIENTE":
                    tabela = "SELECT ID FROM CLIENTE WHERE NOME = {val4}"
                    cursor.prepare(tabela)
                    cliente_id = cursor.execute(None, ()).fetchone()
                if val1.upper() == "QUANTIDADE":
                    tabela = "SELECT * FROM QUANTIDADE WHERE NOME_LIVRO = {val2};"
                    return cursor.execute(sql, (val2,)).fetchall()
                sql = f"SELECT * FROM VENDASLIVROS WHERE {val1} = ?"
                if val1 != "QUANTIDADE":
                    return cursor.execute(sql, (val2,)).fetchall()
            else:
                sql = "SELECT * FROM VENDA"
                return cursor.execute(sql).fetchall()
        except Exception as e:
            print(f"Error: {e}")
        finally:
            cursor.close()

    @staticmethod
    def select_livro(val1, val2, cursor):
        try:
            if val1:
                sql = f"SELECT * FROM LIVROS WHERE {val1} = ?"
                return cursor.execute(sql, (val2,)).fetchall()
            else:
                sql = "SELECT * FROM LIVROS"
                return cursor.execute(sql).fetchall()
        except Exception as e:
            print(f"Error: {e}")
        finally:
            cursor.close()

    @staticmethod
    def delete_cliente(val1, cursor):
        try:
            if val1.isnumeric():
                sql = "DELETE FROM CLIENTE WHERE ID = ?"
                cursor.execute(sql, (val1,))
            else:
                id = cursor.execute("SELECT ID FROM CLIENTE WHERE NOME = ?", (val1,)).fetchone()
                if id:
                    sql = "DELETE FROM CLIENTE WHERE ID = ?"
                    cursor.execute(sql, (id[0],))
                else:
                    print("Cliente não encontrado.")
                    return None
        except Exception as e:
            print(f"Erro ao deletar cliente: {e}")
        finally:
            cursor.close()

    @staticmethod
    def delete_venda(val1, cursor):
        try:
            if val1.isnumeric():
                sql = "DELETE FROM CLIENTE WHERE ID = ?"
                cursor.execute(sql, (val1,))
            else:
                id = cursor.execute("SELECT ID FROM CLIENTE WHERE NOME = ?", (val1,)).fetchone()
                if id:
                    sql = "DELETE FROM CLIENTE WHERE ID = ?"
                    cursor.execute(sql, (id[0],))
                else:
                    print("Essa venda não foi realizada antes")
                    return None
        except Exception as e:
            print(f"Erro na exclusão da venda: {e}")
        finally:
            cursor.close()
    
    @staticmethod
    def delete_livro(val1, cursor):
        try:
            if val1.isnumeric():
                sql = "DELETE FROM LIVRO WHERE ID = ?"
                cursor.execute(sql, (val1,))
            else:
                if id:
                    sql = "DELETE FROM CLIENTE WHERE ID = ?"
                    cursor.execute(sql, (id[0],))
                print(f"Esse livro não existe no sistema")
                return None
        except Exception as e:
            print(f"Erro ao excluir o livro do estoque: {e}")
        finally:
            cursor.commit()
        
def valid_livro(val1):
    cursor = conn.cursor()
    try:
        sql = f"SELECT NOME FROM LIVROS WHERE ID = {val1}"
        return cursor.execute(sql).fetchall()
    except Exception as e:
        print(f"Error: {e}")
    finally:
        cursor.close()