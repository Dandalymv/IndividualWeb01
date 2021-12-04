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
		String sql = "select nombre_oficina, idoficinas, direccion, comuna, region, telefono, correo, espacios, horario, valor from oficinas";
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
						rs.getString("valor"),
						rs.getInt("idoficinas")));
			}
			stm.execute(sql);
			stm.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return offices;
	}
	//nombre_oficina, direccion, comuna, region, telefono, correo, espacios, horario, valor
	@Override
	public Oficina readOne(int id) {
		String sql = "select nombre_oficina, direccion, comuna, region, telefono, correo, "
				+ "espacios, horario, valor, idoficinas from oficinas where idoficinas = " + id;
		Oficina o = null;
		
		try {
			cn = Conexion.getConn();
			Statement stm = cn.createStatement();
			ResultSet rs = stm.executeQuery(sql);
			
			if(rs.next()) {
				o = new Oficina(
						rs.getString("nombre_oficina"), 
						rs.getString("direccion"), 
						rs.getString("comuna"), 
						rs.getString("region"), 
						rs.getString("telefono"), 
						rs.getString("correo"), 
						rs.getString("espacios"), 
						rs.getString("horario"), 
						rs.getString("valor"), 
						rs.getInt("idoficinas"));
				
			}
			
			rs.close();
			stm.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		return o;
	}

	@Override
	public void update(Oficina c) {
		String sql = "update oficinas set "
				+ "nombre_oficina = '" + c.getNombreOficina() + "', "
				+ "direccion = '" + c.getDireccion() + "', " 
				+ "comuna = '" + c.getComuna() + "', "
				+ "region = '" + c.getRegion() + "', "
				+ "telefono = '" + c.getTelefono() + "', " 
				+ "correo = '" + c.getCorreo() + "', "
				+ "espacios = '" + c.getEspacios() + "', "
				+ "horario = '" + c.getHorario() + "', "
				+ "comuna = '" + c.getComuna() + "', "
				+ "valor = '" + c.getValorDiario() + 
				"'WHERE idusuarios ='" + c.getId() + "'";
		
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
	public void delete(int id) {
		String sql = "DELETE FROM oficinas WHERE idoficinas = '" + id + "'";	
		
		try {
			cn = Conexion.getConn();
			Statement stm = cn.createStatement();
			
			stm.execute(sql);
			stm.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		
	}

	@Override
	public void delete(Oficina c) {
		// TODO Auto-generated method stub
		
	}

}
