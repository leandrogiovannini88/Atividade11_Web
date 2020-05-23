package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	// singleton da conexão - thread safe
	private static final ThreadLocal<Connection> conn = new ThreadLocal<>();
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			throw new RuntimeException(e);
		}
	}

	// Obtém conexão com o banco de dados
	public static Connection obtemConexao() throws SQLException {
		return DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/vendas?useTimezone=true&serverTimezone=America/Sao_Paulo&user=root&password=123456");
	}

	// Fecha a conexão - usado no servlet destroy
	public static void fecharConexao() throws SQLException {
		if (conn.get() != null) {
			conn.get().close();
			conn.set(null);
		}
	}

}
