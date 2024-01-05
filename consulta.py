import mysql.connector

class movDado:

    conn = None

    @classmethod
    def connect(cls):
        host = "localhost"
        user = "root"
        password = ""
        database = "project"

        cls.conn = mysql.connector.connect(
            host=host,
            user=user,
            password=password,
            database=database
        )

    def __init__(self):
        self.val1 = None
        self.val2 = None
        self.val3 = None
        self.val4 = None
        self.val5 = None
        self.val6 = None
        self.val7 = None


    #Ok
    @staticmethod
    def insert_client(val1, val2, val3):
        try:
            if movDado.conn is None:
                movDado.connect()
            cursor = movDado.conn.cursor()
            sql = "INSERT INTO CLIENTE(NOME, CNPJ, EMPRESA) VALUES (%s, %s, %s)"
            cursor.execute(sql, (val1, val2, val3))
            movDado.conn.commit()
        except Exception as e:
            movDado.conn.rollback()
            print(f"Error: {e}")
        finally:
            cursor.close()

    #Ok
    @classmethod
    def select_venda(cls, val1=None, val2=None):
        try:
            cls.connect()
            cursor = cls.conn.cursor()

            while True:
                if val1:
                    if val1.upper() == "LIVRO":
                        sql = "SELECT ID FROM LIVRO WHERE ID = %s"
                        cursor.execute(sql, (val2,))
                        livro_id = cursor.fetchone()
                        if livro_id:
                            sql = f"SELECT * FROM VENDASLIVROS WHERE LIVRO_ID = %s"
                            cursor.execute(sql, (livro_id[0],))
                            results = cursor.fetchall()
                            total_results = cursor.rowcount

                            if total_results == 0:
                                print("Nenhum resultado encontrado.")
                                return []

                            for result in results:
                                print(result)

                            if len(results) == total_results:
                                break
                        else:
                            print("Livro não encontrado.")
                            return []
                    elif val1.upper() == "CLIENTE":
                        sql = "SELECT ID FROM CLIENTE WHERE NOME LIKE %s"
                        cursor.execute(sql, (f"%{val2}%",))
                        cliente_id = cursor.fetchone()
                        if cliente_id:
                            sql = f"SELECT * FROM VENDASLIVROS WHERE CLIENTE_ID = %s"
                            cursor.execute(sql, (cliente_id[0],))
                            results = cursor.fetchall()
                            total_results = cursor.rowcount

                            if total_results == 0:
                                print("Nenhum resultado encontrado.")
                                return []

                            for result in results:
                                print(result)

                            if len(results) == total_results:
                                break
                        else:
                            print("Cliente não encontrado.")
                            return []
                    elif val1.upper() == "QUANTIDADE":
                        sql = "SELECT * FROM QUANTIDADE WHERE NOME_LIVRO = %s"
                        cursor.execute(sql, (val2,))
                        results = cursor.fetchall()
                        total_results = cursor.rowcount

                        if total_results == 0:
                            print("Nenhum resultado encontrado.")
                            return []

                        for result in results:
                            print(result)

                        if len(results) == total_results:
                            break
                    elif val1.upper() == "METODO PAGAMENTO":
                        sql = "SELECT * FROM VENDASLIVROS WHERE METODO_PAGAMENTO LIKE %s"
                        cursor.execute(sql, (f"%{val2}%",))
                        results = cursor.fetchall()
                        total_results = cursor.rowcount

                        if total_results == 0:
                            print("Nenhum resultado encontrado.")
                            return []

                        for result in results:
                            print(result)

                        if len(results) == total_results:
                            break
                    else:
                        print("Opção inválida.")
                        return []
                else:
                    sql = "SELECT * FROM VENDASLIVROS"
                    cursor.execute(sql)
                    results = cursor.fetchall()
                    total_results = cursor.rowcount

                    if total_results == 0:
                        print("Nenhum resultado encontrado.")
                        return []

                    for result in results:
                        print(result)

                    if len(results) == total_results:
                        break

        except Exception as e:
            print(f"Error: {e}")
        finally:
            if cursor:
                cursor.close()


    #OK
    @classmethod
    def insert_livro(cls, val1, val2, val3):
        try:
            cls.connect()  
            cursor = cls.conn.cursor()
            sql = "INSERT INTO LIVROS(NOME, AUTOR, EDITORA) VALUES (%s, %s, %s)"
            cursor.execute(sql, (val1, val2, val3))
            cls.conn.commit()
        except Exception as e:
            print(f"Error: {e}")
        finally:
            if cursor:
                cursor.close()
  
    #Ok
    @classmethod
    def select_clientes(cls, val1=None, val2=None):
        cursor = None
        try:
            if cls.conn is None:
                cls.connect()  
            cursor = cls.conn.cursor()
            while True:
                try:
                    if val1 is not None and val2 is not None:
                        sql = f"SELECT * FROM CLIENTE WHERE {val1} LIKE %s"
                        search_term = f"%{val2}%"
                        cursor.execute(sql, (search_term,))
                        results = cursor.fetchall()
                        total_results = cursor.rowcount  # Total de resultados encontrados

                        if total_results == 0:
                            print("Nenhum resultado encontrado.")
                        else:
                            for result in results:
                                print(result)
                            print(f"Total de resultados encontrados: {total_results}")

                            # Se o número de resultados exibidos for igual ao total, saia do loop
                            if len(results) == total_results:
                                break

                    elif val1 is None and val2 is None:
                        sql = "SELECT * FROM CLIENTE"
                        cursor.execute(sql)
                        results = cursor.fetchall()
                        total_results = cursor.rowcount  

                        if total_results == 0:
                            print("Nenhum cliente encontrado.")
                        else:
                            for result in results:
                                print(result)
                            print(f"Total de clientes encontrados: {total_results}")

                            # Se o número de resultados exibidos for igual ao total, saia do loop
                            if len(results) == total_results:
                                break
                except Exception as e:
                    print(f"Error: {e}")
        except Exception as e:
            print(f"Error: {e}")
        finally:
            if cursor:
                cursor.close()


        @classmethod
        def select_venda(cls, val1=None, val2=None):
            try:
                cls.connect()
                cursor = cls.conn.cursor()

                if val1:
                    if val1.upper() == "LIVRO":
                        sql = "SELECT ID FROM LIVRO WHERE ID = %s"
                        cursor.execute(sql, (val2,))
                        livro_id = cursor.fetchone()
                        if livro_id:
                            sql = f"SELECT * FROM VENDASLIVROS WHERE LIVRO_ID = %s"
                            cursor.execute(sql, (livro_id[0],))
                            return cursor.fetchall()
                        else:
                            print("Livro não encontrado.")
                            return []
                    elif val1.upper() == "CLIENTE":
                        sql = "SELECT ID FROM CLIENTE WHERE NOME LIKE %s"
                        cursor.execute(sql, (f"%{val2}%",))
                        cliente_id = cursor.fetchone()
                        if cliente_id:
                            sql = f"SELECT * FROM VENDASLIVROS WHERE CLIENTE_ID = %s"
                            cursor.execute(sql, (cliente_id[0],))
                            return cursor.fetchall()
                        else:
                            print("Cliente não encontrado.")
                            return []
                    elif val1.upper() == "QUANTIDADE":
                        sql = "SELECT * FROM QUANTIDADE WHERE NOME_LIVRO = %s"
                        cursor.execute(sql, (val2,))
                        return cursor.fetchall()
                    elif val1.upper() == "METODO PAGAMENTO":
                        sql = "SELECT * FROM VENDASLIVROS WHERE METODO_PAGAMENTO LIKE %s"
                        cursor.execute(sql, (f"%{val2}%",))
                        return cursor.fetchall()
                    else:
                        print("Opção inválida.")
                        return []
                else:
                    sql = "SELECT * FROM VENDASLIVROS"
                    cursor.execute(sql)
                    return cursor.fetchall()
            except Exception as e:
                print(f"Error: {e}")
            finally:
                if cursor:
                    cursor.close()




    #Ok
    @classmethod
    def select_livro(cls, val1=None, val2=None):
        try:
            cls.connect()
            cursor = cls.conn.cursor()

            while True:
                if val1:
                    sql = f"SELECT * FROM LIVROS WHERE {val1} = %s"
                    cursor.execute(sql, (val2,))
                    results = cursor.fetchall()
                    total_results = cursor.rowcount
                    if results:
                        for result in results:
                            print(result)
                    else:
                        print("Nenhum resultado encontrado.")
                    if len(results) == total_results:
                        break
                else:
                    sql = "SELECT * FROM LIVROS"
                    cursor.execute(sql)
                    results = cursor.fetchall()
                    if results:
                        for result in results:
                            print(result)
                    else:
                        print("Nenhum livro encontrado.")
                    break  # Apenas uma consulta é necessária quando val1 é None

        except Exception as e:
            print(f"Error: {e}")
        finally:
            if cursor:
                cursor.close()

    #Ok
    @staticmethod
    def delete_cliente(val1):
        try:
            if movDado.conn is None:
                movDado.connect()
            cursor = movDado.conn.cursor()
            if val1.isnumeric():
                sql = "DELETE FROM CLIENTE WHERE ID = %s"
                cursor.execute(sql, (val1,))
                movDado.conn.commit()
            else:
                id = cursor.execute("SELECT ID FROM CLIENTE WHERE NOME = %s", (val1,)).fetchone()
                if id:
                    sql = "DELETE FROM CLIENTE WHERE ID = %s"
                    cursor.execute(sql, (id[0],))
                else:
                    print("Cliente não encontrado.")
                    return None
        except Exception as e:
            movDado.conn.rollback()
            print(f"Erro ao deletar cliente: {e}")
        finally:
            if cursor:
                cursor.close()

    #Ok
    @staticmethod
    def delete_venda(val1):
        try:
            if movDado.conn is None:
                movDado.connect()
            val1 = int(val1)
            cursor = movDado.conn.cursor()
            sql = "DELETE FROM VENDASLIVROS WHERE ID = %s"
            cursor.execute(sql, (val1,))
            movDado.conn.commit()
        except Exception as e:
            movDado.conn.rollback()
            print(f"Erro na exclusão da venda: {e}")
        finally:
            if cursor:
                cursor.close()

    #Ok
    @staticmethod
    def delete_livro(val1):
        try:
            if movDado.conn is None:
                movDado.connect()
            cursor = movDado.conn.cursor()
            if val1.isnumeric():
                sql = "DELETE FROM LIVROs WHERE ID = %s"
                cursor.execute(sql, (val1,))
                movDado.conn.commit()
            else:
                sql = "DELETE FROM LIVROs WHERE NOME = %s"
                cursor.execute(sql, (val1,))
                movDado.conn.commit()
        except Exception as e:
            movDado.conn.rollback()
            print(f"Erro ao excluir o livro do estoque: {e}")
        finally:
            if cursor:
                cursor.close()



    #Ok
    @classmethod
    def close_connection(cls):
        if cls.conn:
            cls.conn.close()
            cls.conn = None


