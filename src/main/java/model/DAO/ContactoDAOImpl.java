package model.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Conexion;
import model.Contacto;
import model.Oficina;
public class ContactoDAOImpl implements IContactoDAO{
	
	private Connection cn = null;
	
	@Override
	public void create(Contacto c) {
		
		String sql = "INSERT INTO contactos (nombre, apellido, telefono, correo) "
				+ "VALUES ('"
				+ c.getNombre() + "','" 
				+ c.getApellido() + "','" 
				+ c.getTelefono() + "','" 
				+ c.getCorreo()+ "')";
		
		try {
			
			cn= Conexion.getConn();
			Statement stm = cn.createStatement();
			stm.execute(sql);
			stm.close();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}

		
	}

	@Override
	public List<Contacto> readAll() {
		String sql = "select nombre, apellido, telefono, correo from contactos";
		ArrayList<Contacto> contactos = new ArrayList<Contacto>();
		
		try {
			
			cn = Conexion.getConn();
			Statement stm = cn.createStatement();
			ResultSet rs = stm.executeQuery(sql);
			
			while (rs.next()) {
					contactos.add(new Contacto (rs.getString("nombre"),
						rs.getString("apellido"),
						rs.getString("telefono"),
						rs.getString("correo")));
			}
			stm.execute(sql);
			stm.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return contactos;
	}

	@Override
	public void update(Contacto c) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Contacto c) {
		// TODO Auto-generated method stub
		
	}


	
	

}
