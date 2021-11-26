package model.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Conexion;
import model.Oficina;



public class OficinaDAOImpl implements IOficinaDAO{

	private Connection cn = null;
	
	@Override
	public void create(Oficina o) {
		
		String sql = "INSERT INTO oficinas (nombre_oficina, direccion, comuna, region, telefono, "
				+ "correo, espacios, horario, valor) VALUES ('"
				+ o.getNombreOficina() + "','" 
				+ o.getDireccion() + "','" 
				+ o.getComuna()+ "','" 
				+ o.getRegion() + "','"
				+ o.getTelefono() + "','" 
				+ o.getCorreo() + "','" 
				+ o.getEspacios() + "','"
				+ o.getHorario() + "','"
				+ o.getValorDiario() + "')";
		
		try {
		
			cn = Conexion.getConn();
			Statement stm = cn.createStatement();
			stm.execute(sql);
			stm.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}

	@Override
	public List<Oficina> readAll() {
		String sql = "select nombre_oficina, direccion, comuna, region, telefono, correo, espacios, horario, valor from oficinas";
		ArrayList<Oficina> offices = new ArrayList<Oficina>();
		
		try {
			
			cn = Conexion.getConn();
			Statement stm = cn.createStatement();
			ResultSet rs = stm.executeQuery(sql);
			
			while (rs.next()) {
				offices.add(new Oficina (rs.getString("nombre_oficina"),
						rs.getString("direccion"),
						rs.getString("comuna"),
						rs.getString("region"),
						rs.getString("telefono"),
						rs.getString("correo"), 
						rs.getString("espacios"),
						rs.getString("horario"),
						rs.getString("valor")));
			}
			stm.execute(sql);
			stm.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return offices;
	}

	@Override
	public Oficina readOne(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Oficina c) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Oficina c) {
		// TODO Auto-generated method stub
		
	}

}
