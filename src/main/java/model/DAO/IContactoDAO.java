package model.DAO;

import java.util.List;

import model.Contacto;


public interface IContactoDAO {
	
	public void create(Contacto c);
	public List<Contacto> readAll();
	public void update(Contacto c);
	public void delete(int id);
	public void delete(Contacto c);


}
